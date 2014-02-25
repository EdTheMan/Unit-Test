#Chi Ieong Tai
#COSI 236B
#Pito Salas
#a class which represents a rectangle with two points

require_relative 'point.rb'

class Rectangle
    
  attr_accessor :p1,:p2
  #two points
  def initialize(p1,p2)
    
    @p1 = p1
    @p2 = p2
    
  end
  
  #returns the area of the rectangle given by a formula
  def area
    return ( (@p2.y - @p1.y).abs * (@p2.x - @p1.x).abs )
  end


end
