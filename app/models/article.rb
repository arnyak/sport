class Article < ActiveRecord::Base
  attr_accessible :content, :on_home_page, :publish, :title
end
