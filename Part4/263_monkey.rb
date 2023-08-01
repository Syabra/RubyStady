# frozen_string_literal: true

# Класс для создания обезьян
class Monkey
   attr_reader :state

    def initialize
        state = %i[run stop]
        @state = state[rand(0..1)]
    end

    def run
        @state = :run
    end

    def stop
        @stop = :stop
    end
end

# очищает экран терминала
puts "\e[H\e[2J"

mon1 = Monkey.new
puts "monk1: #{mon1.state}"

mon2 = Monkey.new
puts "monk2: #{mon2.state}"

mon3 = Monkey.new
puts "monk3: #{mon3.state}"

mon4 = Monkey.new
puts "monk4: #{mon4.state}"
