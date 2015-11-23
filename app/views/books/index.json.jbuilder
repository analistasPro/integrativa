json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :pages, :publisher, :language, :year, :description, :internetprice, :normalprice, :category_id, :kind, :section
  json.url book_url(book, format: :json)
end
