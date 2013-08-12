require_relative '../lib/bbc/base.rb'
require_relative '../lib/bbc/uri.rb'
require_relative '../lib/bbc/topic.rb'
require_relative 'spec_helper.rb'

describe "Initialize" do
  before(:all) do
    @response = JSON.parse(URI::Uri.new(URI(BBC.api_url+"/topics")).response.body)["topics"]
  end

  it "should connect bbc api" do
    stub_request(:get, "http://api.bbcnews.appengine.co.uk").to_return(:body => "")
  end

  it "should return an array of json" do
    @response.should_not be_nil
    @response.should be_a_kind_of(Array)
  end
end
