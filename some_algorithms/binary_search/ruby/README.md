### How use

```ruby

require "./do_it"

test_array = (16.times.map { rand(10000)}.uniq.sort)

binary_search(test_array, test_array.first)

binary_search(test_array, -1)

binary_search(test_array, test_array[rand(test_array.size)])


```

### How run tests

`
rspec array_binary_search_spec.rb
`

### Пример использования

```ruby

require "./do_it"

test_array = (16.times.map { rand(10000)}.uniq.sort)

binary_search(test_array, test_array.first)

binary_search(test_array, -1)

binary_search(test_array, test_array[rand(test_array.size)])


```

### Как запустить тесты

`
rspec array_binary_search_spec.rb
`
