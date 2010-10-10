require 'spec_helper'

describe Article do
  before do
    @valid_attrs = {:title => "Using the New Gem Bundler Today",
                    :url => "http://yehudakatz.com/2009/11/03/using-the-new-gem-bundler-today/",
                    :author => "Yehuda Katz",
                    :published_on => Date.new(2009, 11, 3)}

  end
  
  it "has a title, url, author and publication date" do
    Article.new(@valid_attrs).should be_valid
  end

  it "can have a unknown pub date" do
    @valid_attrs[:published_on] = nil
    Article.new(@valid_attrs).should be_valid
  end

  it "must have an author" do
    @invalid_attrs = @valid_attrs.clone
    @invalid_attrs.delete(:author)
    Article.new(@valid_attrs).should_not be_valid
  end

  it "must have an author" do
    @invalid_attrs = @valid_attrs.clone
    @invalid_attrs.delete(:author)
    Article.new(@valid_attrs).should_not be_valid
  end

end
