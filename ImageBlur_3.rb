
class Image
  attr_accessor :row

  def initialize (row)
    @row = row
  end

  def output_image
    cordinates=[]
    @row.each_with_index do|value, rowIndex|
      value.each_with_index do |subVal, colIndex|
   
        if subVal == 1 
          cordinates << [rowIndex, colIndex]     
        end
      end
    end

    cordinates.each do |xValue, yValue|
   
    @row[xValue][yValue+1] = 1 unless yValue >= @row[yValue].length-1 
    @row[xValue][yValue-1] = 1 unless yValue == 0  
    @row[xValue-1][yValue] = 1 unless xValue == 0   
    @row[xValue+1][yValue] = 1 unless xValue >= @row.length-1
    end
  end

  def print_image
    @row.each do |x|
        puts x.join("")
    end
  end

  def blur(distance)  
    distance.times do
      output_image
    end
  end


end
    
image = Image.new([
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 1, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 1]
])

image.blur(3)

image.print_image
