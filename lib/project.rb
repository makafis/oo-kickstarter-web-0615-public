class Project
  attr_accessor :title
  @@backers_array = []
  def initialize(title)
    @title = title
  end
  def add_backer(backer)
    @@backers_array << backer
    backer.backed_projects << self
  end
  def backers
    @@backers_array
  end
end