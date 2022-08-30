# frozen_string_literal: true

# Copyright (c) 2022 Claudio Martínez Ortiz

def sorted?(array)
  # Method that checks if the array is sorted
  holder = false

  (0..(array.size - 2)).each do |value|
    if array[value] > array[value + 1]

      holder = false
      break

    else holder = true

    end
  end

  holder
end

def swap(array, value)
  holder = array[value]
  array[value] = array[value + 1]
  array[value + 1] = holder
end

def bubble_sort(array)
  # Checks if sorted
  until sorted?(array)

    counter = 0

    # Swap cycle
    (0..(array.size - 2 - counter)).each do |value|
      next unless array[value] > array[value + 1]

      swap(array, value)
    end

    # Optimization
    counter += 1

  end

  array
end

trial = [4, 3, 78, 5 , 27, -1, 7 , 3, 0, 72, 84, 32.5]
p trial
bubble_sort(trial)
p trial