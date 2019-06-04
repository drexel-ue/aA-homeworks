fishies = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

def sluggish_octo(arr)
    biggest = 0
    length = 0
    arr.each_with_index do |fish, index|
        biggest, length = index, fish.length if fish.length > length
    end
    arr[biggest]
end

p sluggish_octo(fishies) == "fiiiissshhhhhh"
