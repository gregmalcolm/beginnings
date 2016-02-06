json.array!(@examples) do |example|
  json.extract! example, :id, :name, :favorite_color
  json.url example_url(example, format: :json)
end
