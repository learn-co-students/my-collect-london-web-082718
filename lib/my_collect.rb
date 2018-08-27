def my_collect(array)
  if block_given?
    i = 0

    new_array = []

    while i < array.length
      result = yield(array[i])
      i = i + 1

      new_array.push(result)
    end
    new_array
  end
end

languages = ['ruby', 'javascript', 'python', 'objective-c']

my_collect(languages) do |language|
  language.upcase
end
