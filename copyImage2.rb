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
          #  puts "----------"
        
          # puts rowIndex
          # puts colIndex-1
          # puts "----------"
        
           # @row[rowIndex-1][colIndex] = 8 
           
           # @row[rowIndex][colIndex-1] = 5          
           # @row[rowIndex][colIndex+1] = 4  
        
        end
      #    print subVal
      end
     #puts
    end



    cordinates.each do |xValue, yValue|
           @row[xValue][yValue-1] = 9 if @row[xValue][yValue-1]
           @row[xValue][yValue+1] = 8 if @row[xValue][yValue+1]
           #puts @row[xValue+1][yValue]
           puts "---------"
           puts xValue-1
           puts yValue
           puts "---------"
           #puts @row[xValue-1][yValue]
           @row[xValue+1][yValue] = 7 if xValue !=3
           @row[xValue-1][yValue] = 5 if xValue-1 !=-1 
           #@row[rowIndex][colIndex-1] = 5          
           #@row[rowIndex][colIndex+1] = 4  
       print @row
    end
    puts "============"
    # print @row
    puts "============"
  end
 
end

    # @row.each_with_index do |value, rowIndex|
    #   puts "+++++++++"
    #   puts
    #   value.each_with_index do |subArr, subIndex|
    #     if subArr == 1 && value.first && value.last
    #       puts "row #{rowIndex} col #{subIndex}"
    #       value[subIndex + 1] = 9
    #     elsif subArr== 1 && value.last
    #       value[subIndex - 2] = 4
              
    #     end
    #    puts subArr
    #  end
    #  puts "-----------"
    #  puts value.join("")
    # end    

image = Image.new([
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [1, 0, 0, 0]
])
image.output_image

