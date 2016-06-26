json.array!(@voice_keywords) do |voice_keyword|
  json.extract! voice_keyword, :id, :time, :keyword
  json.url voice_keyword_url(voice_keyword, format: :json)
end
