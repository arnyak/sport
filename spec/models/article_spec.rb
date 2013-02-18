require 'spec_helper'

describe Article do
  before(:each) do
    @valid_attributes = {
      :title => 'first',
      :content => 'This is a description',
      :publish => false,
      :on_home_page => false
    }
  end

  it "should be valid given valid attributes" do
    article = Article.new(@valid_attributes)
    article.should be_valid
  end

  it "should not be valid without title" do
    article = Article.new(@valid_attributes.except(:title))
    article.should_not be_valid
  end
end
