require 'spec_helper'

describe "articles/index.html.erb" do
  before(:each) do
    @one = Stub_model(Article, :id => 1, :title => "first", :content => "this is content #1", :publish => true, :on_home_page => true)
    @three = Stub_model(Article, :id => 3, :title => "third", :content => "this is content #3", :publish => true, :on_home_page => true)
    assign(:aricles, [@one, @three])
  end

  it "render a list of articles" do
    render
  end
end
