#Chi Ieong Tai
#COSI 236B
#Pito Salas
#unit test class which ensures the rectangle class is valid.

require 'minitest/spec'
require 'minitest/autorun'
require_relative 'rectangle.rb'

class TestRectangle < MiniTest::Unit::TestCase
  
  describe Rectangle do
    #creates a new rectangle with two points
    before do
      @rectangle = Rectangle.new(Point.new(0,0), Point.new(3,3))
    end
    #ensures the rectnagle has two points and that the
    #x and y values of each point are not the same.
    #if the x and y values were the same,
    #then it would not be a valid rectangle.
    it "creates a valid rectangle" do
      @rectangle.p1.must_be_instance_of Point
      @rectangle.p2.must_be_instance_of Point
      @rectangle.p1.x.wont_be :==, @rectangle.p2.x
      @rectangle.p1.y.wont_be :==, @rectangle.p2.y
    end
    
    #ensures the correct area is returned.
    it "retrieves a valid area" do
      assert_equal @rectangle.area, 9     
    end
  
  end
 
end
