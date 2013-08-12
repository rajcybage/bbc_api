require 'json'
require 'socket'
require_relative 'uri.rb'
require_relative 'topic.rb'

module BBC
	class Api
    attr_accessor :topics
    attr_reader :response
    
    def initialize
      @response = JSON.parse(URI::Uri.new(URI(BBC.api_url+"/topics")).response.body)["topics"]
    end

    def topics
      @topics = []
      @response.each do |hash|
        @topics <<  Topic.new(:id => hash["id"], :title => hash["title"])
      end
      @topics
    end

    def build_topics_hash
      @topics.each_with_index.inject({}){|result, (element,i)| result.merge Hash[i.succ, element]}
    end
  end
  
  def BBC.api_url
    url = "http://api.bbcnews.appengine.co.uk"
  end

end	