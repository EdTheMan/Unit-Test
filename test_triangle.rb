#Chi Ieong Tai
#COSI 236B
#Pito Salas
#unit test which ensures that the triangle class is valid

require 'minitest/spec'
require 'minitest/autorun'
require_relative 'triangle.rb'

class TestTriangle < MiniTest::Unit::TestCase
  
  describe Triangle do
    #creates new triangle with three points
    before do
      @triangle = Triangle.new(Point.new(0,0), Point.new(1,2), Point.new(5,6))
    end
    #ensures the triangle does indeed have three points
    it "creates a valid triangle" do
      @triangle.p1.must_be_instance_of Point
      @triangle.p2.must_be_instance_of Point
      @triangle.p3.must_be_instance_of Point
      
    end
    #ensures the correct area is returned
    it "retrieves a valid area" do
      assert_in_delta 2,@triangle.area,0.001     
    end
  
  end
 
end
