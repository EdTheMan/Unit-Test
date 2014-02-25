#Chi Ieong Tai
#COSI 236B
#Pito Salas
#class representing a scene, which can be one 
#or more rectangles,circles and triangles

class Scene
    
  attr_accessor :shapes
  #creates an array of shapes
  def initialize
    
    @shapes = Array.new
    
  end
  
  #returns the number of shapes
  def shape_count
    
    return @shapes.size

  end
  
  #returns the total area of all shapes
  def total_area
    
    total = 0
    @shapes.each do |shape|
      
      total += shape.area
      
    end    
    
    return total
    
  end
  
  #adds a shape to the array of shapes
  def add_shape(shape)
    
    @shapes << shape
    
  end

  #removes a shape at the end of the array
  def remove_shape()
    
    return @shapes.pop
    
  end

end
