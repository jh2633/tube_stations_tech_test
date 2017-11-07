require_relative 'stations'
include StationNames

class Tube

    def list_of_stations(station_names)
      split_stations = split_strings(station_names)
      alphabets = generate_alphabet_array
      shortest_list = []

      return shortest_list
    end

    def compare_arrays
      
    end


private

  def generate_alphabet_array
    ('a'..'z').to_a
  end

  def split_strings(array)
    array_of_split_strings = []
    array.each do |x|
       array_of_split_strings << x.split(//)
     end
    return array_of_split_strings
  end

end
