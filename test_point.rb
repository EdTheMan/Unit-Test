#Chi Ieong Tai
#COSI 236B
#Pito Salas
#unit test class that verifies the validity of the point class

require 'minitest/spec'
require 'minitest/autorun'
require_relative 'point.rb'

class TestPoint < MiniTest::Unit::TestCase
  
  describe Point do
    
    #creates a new point
    before do
      @point = Point.new(0.0,3.2)
    end
    
    #ensures the points given are floats
    it "creates a valid point" do
      assert_in_delta @point.x, 0.0, 0.001
      assert_in_delta @point.y, 3.2, 0.001     
    end
  
  end
 
end
