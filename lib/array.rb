class Array
  def my_flatten
    inject([]) do |new_ary, e|
      new_ary += e.is_a?(Array) ? e.my_flatten : [e]
    end
  end
end

