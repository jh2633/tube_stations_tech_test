require_relative 'stations'
include StationNames

class Tube
  attr_reader :stations_array
    def initialize(hash = StationNames::ALL_STATIONS, arr = [], alphabet = ('a'..'z').to_a)
      @stations_hash = hash
      @stations_array = arr
      @alphabet_array = alphabet
    end

    #create an array of station name from the hash"
    def create_station_array
      @stations_hash.each {|k,v| @stations_array << v}
      @stations_array.sort! {|x, y| y.length <=> x.length}
    end

    def list_of_stations(station_names = @stations_array)
      split_stations = split_strings(station_names)
      iterate_array(split_stations, @alphabet_array)
    end


private
  #checks for similiarity between two stations
  def compare_arrays(one, two)
    (one&two).empty?
  end

  #extracting the block from list of stations, this will compare two arrays,
  #returning the shortest list of elements in the first array that matches the
  #elements from the second array
  def iterate_array(array_one, array_two)
    shortest_list = []
    array_one.each do |x|
      if compare_arrays(x, array_two)
        next
      else
        array_two -= x
        shortest_list << x.join("")
      end
    end
    return shortest_list

  end

  #split an array of strings into sub-arrays of individual characters
  def split_strings(array)
    array_of_split_strings = []
    array.each do |x|
       array_of_split_strings << x.split(//)
     end
    return array_of_split_strings
  end

end
