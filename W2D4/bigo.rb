
# A Very Hungry Octopus wants to eat the longest fish in an array of fish.
# Sluggish Octopus
# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to all other fish lengths

# Dominant Octop

arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

def longest_fish(array)
result = [array[0]]

(0...array.length).each do |idx1|
   if array[idx1].length > result[0].length
     result.pop
     result << array[idx1]
   end
end

result.join
    
end

p longest_fish(arr) == "fiiiissshhhhhh"
p arr

def quick_sort(array, &prc)
return array if array.length <= 1

pivot = array.shift
prc ||= Proc.new {|a, b| a <=> b }
left = []
right = []
array.each do |ele|
   if  prc.call(ele.length , pivot.length) == -1
    left << ele
   else
    right << ele
   end
end
return quick_sort(left) + [pivot] + quick_sort(right)

end

p quick_sort(arr).last
# Slow Dance
# Given a tile direction, 
# iterate through a tiles array to return the tentacle number (tile index) the octopus must move. 
# This should take O(n) time.

# slow_dance("up", tiles_array)
# > 0

# slow_dance("right-down", tiles_array)
# > 3

def slow_dance(dir, array)

result = 0

(0...array.length).each do |idx|
    if dir == array[idx]
        result += idx
    end
end
result 
end
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
p slow_dance("up", tiles_array)


p slow_dance("right-down", tiles_array)
