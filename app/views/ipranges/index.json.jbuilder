json.array!(@ipranges) do |iprange|
  json.extract! iprange, :id, :crange, :start, :end
  json.url iprange_url(iprange, format: :json)
end
