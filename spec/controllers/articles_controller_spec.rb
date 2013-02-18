require 'spec_helper'

describe ArticleController do
  before(:each) do
    
  end

  def mock_article(stubs={})
    @mock_article = mock_model(Article, stubs)
  end

  describe "GET index" do
    it "assigns all articles as @articles" do
      Article.stub(:all).and_return([mock_article])
      get :index
      assign(:articles, [mock_article])
    end
  end
end