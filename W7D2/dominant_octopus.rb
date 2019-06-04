fishies = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

# Merge Sort: O(n*lg(n))
def merge_sort (array, &prc)
    return array if array.length <= 1

    mid_idx = array.length / 2
    merge(
        merge_sort(array.take(mid_idx), &prc),
        merge_sort(array.drop(mid_idx), &prc),
        &prc
    )
end

# NB: In Ruby, shift is an O(1) operation. This is not true of all languages.
def merge(left, right, &prc)
merged_array = []
prc ||= Proc.new { |num1, num2| num1 <=> num2 }
until left.empty? || right.empty?
    case prc.call(left.first, right.first)
    when -1
    merged_array << left.shift
    when 0
    merged_array << left.shift
    when 1
    merged_array << right.shift
    end
end

merged_array + left + right
end

p merge_sort(fishies) { |fish1, fish2| fish1.length > fish2.length }