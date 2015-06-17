json.array!(@requisitions) do |requisition|
  json.extract! requisition, :id, :vendor, :purchaser
  json.url requisition_url(requisition, format: :json)
end
