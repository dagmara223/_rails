json.array!(@mems) do |mem|
  json.extract! mem, :id, :name, :description
  json.url mem_url(mem, format: :json)
end
