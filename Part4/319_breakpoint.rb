# frozen_string_literal: true

require 'pry'

def random_pow
    pow_arg(rand(1..10))
end

def pow_arg(arg)
    binding.pry
    arg**2
end

puts random_pow