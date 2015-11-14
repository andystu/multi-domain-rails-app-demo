json.array!(@pages) do |page|
  json.extract! page, :id, :title, :content, :site_id
  json.url page_url(page, format: :json)
end
