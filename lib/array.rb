require 'byebug'

class Array
	def my_flatten
    new_ary = []
    each do |val|
      new_ary << val if not val.kind_of?(Array)
      new_ary.concat(val.my_flatten) if val.kind_of?(Array)
    end
    return new_ary
	end	
end