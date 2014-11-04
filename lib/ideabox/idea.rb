class Idea

  attr_reader :title, :description
  attr_accessor :likes

  def initialize(title, description)
    @title       = title
    @description = description
    @likes = 0
  end

  def like!
    @likes += 1
  end

end
