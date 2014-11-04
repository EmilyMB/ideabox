class Idea

  attr_reader :title, :description
  attr_accessor :likes, :id

  def initialize(title, description)
    @title       = title
    @description = description

    @likes = 0
  end

  def like!
    @likes += 1
  end

  def <=>(other)
    likes <=> other.likes
  end


end
