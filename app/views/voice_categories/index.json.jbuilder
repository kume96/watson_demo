json.array!(@voice_categories) do |voice_category|
  json.extract! voice_category, :id, :start_time, :end_time, :category
  json.url voice_category_url(voice_category, format: :json)
end
