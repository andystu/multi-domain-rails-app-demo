json.array!(@sites) do |site|
  json.extract! site, :id, :name, :domain, :is_active
  json.url site_url(site, format: :json)
end
