class Image
  attr_accessor :row

  def initialize (row)
    @row = row
    @image_values = [@row]
  end

  def output_image
    @image_values.each do |x|
      x.each do |y|
        puts y.join("")
      end
    end
  end 

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image


