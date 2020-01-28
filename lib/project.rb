require 'pry'
class Project
  attr_accessor :backers, :title
  
  def initialize(title)
    @title = title
    @backers = []
    
  end
  
  def add_backer(backer)
    @backers << backer
    backer.back_project(self) unless backer.backed_proects.include?(self)
  end
  
  
end