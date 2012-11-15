Given /^the following articles:$/ do |articles|
  articles.hashes.each do |article|
    a = Article.new({:title => article[:title], :content => article[:content], :publish => article[:publish], :on_home_page => article[:on_home_page]})
    p a.errors unless a.save
  end
end

