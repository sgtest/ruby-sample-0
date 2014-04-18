class Sample
  # doc for Sample.my_string
  def self.my_string
    "some string"
  end

  # doc for Sample.my_int
  def self.my_int
    123
  end

  # doc for Sample.my_bool
  def self.my_bool
    true
  end

  # doc for Sample.my_hash
  def self.my_hash
    {:a => 1, 'b' => 'two'}
  end

  # doc for Sample.my_array
  def self.my_array
    [1, 2, 'three']
  end

  def initialize(i)
    @i = i
  end

  def my_method(a, b)
    c = 3
    b = 'four'
    l = b.length
    puts "#{@i}: #{b} has length #{l} (a=#{a}, b=#{b})"
    @i += 1
  end

  MY_CONST = 123
end

MY_GLOBAL_CONST = 456

my_global_var = 'another string'

[Array, $*].each do |t|
  puts t
end

require 'base64'
b64 = Base64

# doc for foo
# fff
foo = b64.encode64("foo")

puts foo

MY_SAMPLE = Sample.new(3)
my_sample = MY_SAMPLE
my_sample.my_method('a arg', 'b arg')

puts my_sample.class.my_hash
puts Sample.my_hash
