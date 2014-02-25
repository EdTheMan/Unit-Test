#Chi Ieong Tai
#COSI 236B
#Pito Salas
#unit test class which tests the circle class

require 'minitest/spec'
require 'minitest/autorun'
require_relative 'circle.rb'

class TestCircle < MiniTest::Unit::TestCase
  
  describe Circle do
    
    #creates a new circle
    before do
      @circle = Circle.new(Point.new(0,0), 3.0)
    end
  
    #circle must have a point
    it "creates a valid circle" do
      @circle.p1.must_be_instance_of Point
    end
    
    #ensures the correct area is returned
    it "retrieves a valid area" do
      assert_in_delta @circle.area, 28.274333882308138, 0.001      
    end
  
  end
 
end
