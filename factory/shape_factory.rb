require_relative 'circle'
require_relative 'rectangle'
require_relative 'square'

class ShapeFactory
  def get_shape(type)
    case type
    when 'CIRCLE' then Circle.new 
    when 'RECTANGLE' then Rectangle.new 
    when 'SQUARE' then Square.new 
    end
  end
end