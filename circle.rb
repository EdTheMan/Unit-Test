#Chi Ieong Tai
#COSI 236B
#Pito Salas
#Class which represents a circle

require_relative 'point.rb'

class Circle
    
  attr_accessor :p1
  #circle contains a point and a radius
  def initialize(p1,r)
    
    @p1 = p1
    @radius = r * 1.0
    
  end
  
  #returns the area of the circle class given by pi * r^2
  def area
    return ( Math::PI * @radius * @radius).abs
  end


end
