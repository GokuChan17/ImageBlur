
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
    
    @row[xValue][yValue+1] = 7 unless yValue >= @row.length-1  
    @row[xValue][yValue-1] = 5 unless yValue == 0  
    @row[xValue-1][yValue] = 4 unless xValue == 0   
    @row[xValue+1][yValue] = 9 unless xValue >= @row.length-1
    end
    print @row
  end
end
    
image = Image.new([
  [1, 0, 0, 1],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [1, 0, 0, 1]
])
image.output_image
