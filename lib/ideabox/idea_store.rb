class IdeaStore

  def self.save(idea)
    @idea = idea
  end

  def self.count
    1
  end

  def self.find(id)
    @idea
  end
end
