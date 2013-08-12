require_relative 'base.rb'
require_relative 'uri.rb'
require_relative 'story.rb'

class Story

  attr_accessor :story

  def initialize(story)
    @story = story
  end

  def title
    @story["title"]
  end

  def description
    @story["description"]
  end

  def link
    @story["link"]
  end

  def image
    @story["thumbnail"]
  end
end