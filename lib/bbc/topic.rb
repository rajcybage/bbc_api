require_relative 'base.rb'
require_relative 'uri.rb'
require_relative 'story.rb'

class Topic
  attr_accessor :id, :title, :stories

  def initialize(id = nil,title = nil)
    @id = id[:id]
    @title = title
  end

  def stories
    @stories = []
    response = JSON.parse(URI::Uri.new(URI(BBC.api_url+"/stories/#{@id}")).response.body)["stories"].each do |story|
      @stories << Story.new(story)
    end
    @stories
  end
end