#Chi Ieong Tai
#COSI 236B
#Pito Salas
#unit test class which tests the validity of the scene class.

require 'minitest/spec'
require 'minitest/autorun'
require_relative 'scene.rb'
require_relative 'point.rb'
require_relative 'rectangle.rb'
require_relative 'triangle.rb'
require_relative 'circle.rb'

class TestScene < MiniTest::Unit::TestCase
  
  describe Scene do
    #creates a scene and adds shapes to it
    before do
      @scene = Scene.new
      @scene.add_shape(Rectangle.new(Point.new(0,0), Point.new(3,3)))
      @scene.add_shape(Triangle.new(Point.new(0,0), Point.new(1,2), Point.new(5,6)))
      @scene.add_shape(Circle.new(Point.new(0,0), 3.0))
    end
    #ensures the correct types of shapes are added
    it "adds a shape correctly" do
      @scene.shapes[0].must_be_instance_of Rectangle
      @scene.shapes[1].must_be_instance_of Triangle
      @scene.shapes[2].must_be_instance_of Circle
    end
    #ensures the correct number of shapes is returned
    it "retrieves a valid shape count" do
      assert_equal  3,@scene.shape_count
    end
    #ensures the total area returned is correct
    it "retrieves a valid total area" do
      assert_in_delta @scene.total_area, (9 + 2 + 28.274333882308138), 0.001
    end
    #ensures that a shape is actually removed and is the correct one
    it "makes sure a shape is actually removed" do
      @scene.remove_shape.must_be_instance_of Circle
      @scene.shapes[0].must_be_instance_of Rectangle
      @scene.shapes[1].must_be_instance_of Triangle
      assert_equal 2,@scene.shape_count
    end
    
  
  end
 
end
