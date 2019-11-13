# Your Code Here
def map(source_array)
  i = 0 ; new_array =[]
  while i < source_array.length do
    new_array.push yield source_array[i] 
    i += 1
  end
  new_array
end

def reduce(source_array,starting_point=0)
  index = 0 ; total = starting_point
  while index < source_array.length do
    total = total + source_array[index]
    yield total
    index +=1
  end
  total
end

source_array = [1,2,3]
#p reduce(source_array){|memo, n| memo + n}
#p reduce(source_array)
 source_array = [1,2,3]
    starting_point = 100
    expect(reduce(source_array, starting_point){|memo, n| memo + n}).to eq(106)