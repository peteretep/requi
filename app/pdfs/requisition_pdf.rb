class RequisitionPdf < Prawn::Document
  def initialize(requisition)
    super()
    @requisition = requisition
    header
    text_content
    table_content
  end
 
  def header
    #This inserts an image in the pdf file and sets the size of the image
    # image "#{Rails.root}/app/assets/images/header.png", width: 530, height: 150
    text 'Buy the house!'
  end
 
  def text_content
    # The cursor for inserting content starts on the top left of the page. Here we move it down a little to create more space between the text and the image inserted above
    y_position = cursor - 50
 
    # The bounding_box takes the x and y coordinates for positioning its content and some options to style it
    bounding_box([0, y_position], :width => 270) do
      text "Purchaser Details", size: 15, style: :bold
      text @requisition.purchaser
    end
 
    bounding_box([150, y_position], :width => 120) do
      text "Vendor Details", size: 15, style: :bold
      text @requisition.vendor
    end
    bounding_box([300, y_position], :width => 270) do
      text "Property Type", size: 15, style: :bold
      text @requisition.property_type
    end
 
  end
 
  def table_content
    # This makes a call to product_rows and gets back an array of data that will populate the columns and rows of a table
    # I then included some styling to include a header and make its text bold. I made the row background colors alternate between grey and white
    # Then I set the table column widths
    table question_rows do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['DDDDDD', 'FFFFFF']
      self.column_widths = [40, 300, 200]
    end
  end
 
  def question_rows
    @requisition.questions.map do |question|
      [question.id, question.text, '']
    end
  end
end
