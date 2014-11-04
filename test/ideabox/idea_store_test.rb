gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ideabox/idea'
require './lib/ideabox/idea_store'

class IdeaStoreTest < Minitest::Test
  def test_save_and_retrieve_an_idea
    idea = Idea.new("celebrate", "with champagne")
    id = IdeaStore.save(idea)
    assert_equal 1, IdeaStore.count
    idea = IdeaStore.find(id)
    assert_equal "celebrate", idea.title
    assert_equal "with champagne", idea.description
  end
end
