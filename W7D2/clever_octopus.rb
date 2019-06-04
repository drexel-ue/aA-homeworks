fishies = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

def dominant_octo(arr)
    arr.sort { |a, b| a.length > b.length }.first
end

p dominant_octo(fishies)