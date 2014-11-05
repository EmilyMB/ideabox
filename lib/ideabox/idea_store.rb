class IdeaStore


  def self.delete_all
    @all = []
  end

  def self.save(idea)
    @all ||= []
    if idea.new?
      idea.id = next_id
      @all << idea
    end
    idea.id
  end

  def self.count
    all.count
  end

  def self.find(id)
    all.find { |idea| idea.id == id }
  end

  def self.next_id
    count + 1
  end

  def self.all
    @all
  end

  def self.delete(id)
    all.delete_if { |idea| idea.id == id }
  end

end
