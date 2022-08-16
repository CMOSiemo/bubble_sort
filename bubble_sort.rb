#Copyright (c) 2022 Claudio Martínez Ortiz

def sorted?(array)

  holder = false

  for value in 0..(array.size - 2)

    if array[value] > array[value + 1]

      holder = false
      break

    else holder = true

    end

  end

  holder

end


def bubble_sort(array)

  until sorted?(array) do
   
    counter = 0

    for value in 0..(array.size - 2 - counter)

      if array[value] > array[value + 1]

        holder = array[value]
        array[value] = array[value + 1]
        array[value + 1] = holder

      end

    end

    counter += 1

  end

  array

end