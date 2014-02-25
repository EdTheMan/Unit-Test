#Chi Ieong Tai
#COSI 236B
#Pito Salas
#class which represents a triangle with three points

require_relative 'point.rb'

class Triangle
    
  attr_accessor :p1,:p2,:p3
  #three points of a triangle
  def initialize(p1,p2,p3)
    
    @p1 = p1
    @p2 = p2
    @p3 = p3
    
  end
  
  #returns the area of a triangle
  def area
    return (( (p1.x*(p2.y - p3.y)) + (p2.x*(p3.y - p1.y)) + (p3.x*(p1.y - p2.y)) )/2.0).abs
  end


end
