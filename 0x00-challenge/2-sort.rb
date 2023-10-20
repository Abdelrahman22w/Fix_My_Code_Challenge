###
#
#  Sort integer arguments (ascending) 
#
###

result = []

ARGV.each do |arg|
  # Check if the argument is a valid integer
  if arg =~ /^-?\d+$/
    i_arg = arg.to_i

    if result.empty?
      result << i_arg
    else
      is_inserted = false
      result.each_with_index do |value, index|
        if i_arg < value
          result.insert(index, i_arg)
          is_inserted = true
          break
        end
      end

      result << i_arg unless is_inserted
    end
  end
end

puts result
