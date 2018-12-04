json.array! @products do |product|
  json.extract! product, :id, :description, :price, :quantity
end
