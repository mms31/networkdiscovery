json.array!(@ipaddresses) do |ipaddress|
  json.extract! ipaddress, :id, :ipaddress, :iprange, :pingable
  json.url ipaddress_url(ipaddress, format: :json)
end
