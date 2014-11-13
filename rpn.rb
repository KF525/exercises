
def rpn(rpn_array)
  new_array = []
  total = 0

  rpn_array.each do |i|
    if i =~ /\d+/
      new_array << i.to_i
    else
      case
        when i == "+"
          total = new_array[0] + new_array[1]
        when i == "-"
          total = new_array[0] - new_array[1]
        when i == "/"
          total = new_array[0] / new_array[1]
        when i == "*"
          total = new_array[0] * new_array[1]
      end
    end
  end
  total
end
