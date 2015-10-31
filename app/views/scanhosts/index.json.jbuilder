json.array!(@scanhosts) do |scanhost|
  json.extract! scanhost, :id
  json.url scanhost_url(scanhost, format: :json)
end
