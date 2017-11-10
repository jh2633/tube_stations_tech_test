require_relative 'stations'
include StationNames

class Tube
  attr_reader :stations_array
    def initialize(hash = StationNames::ALL_STATIONS)
    @stations_hash = hash
    @stations_array = []
    end

    #create an array of station name from the hash"
    def create_station_array
      @stations_hash.each {|k,v| @stations_array << v}
    end

    def list_of_stations(station_names = @stations_array)
      split_stations = split_strings(station_names)
      alphabet = generate_alphabet_array
      shortest_list = []

      split_stations.each do |station|
          if compare_arrays(station, alphabet)
            next
          else
            alphabet -= station
            shortest_list << station.join("")

          end
      end
      return shortest_list
    end
    #checks for similiarity between two stations
    def compare_arrays(one, two)
      (one&two).empty?
    end
    #this method creates an array of all alphabet characters as individual strings
    def generate_alphabet_array
      ('a'..'z').to_a
    end

private


  #split an array of strings into sub-arrays of individual characters
  def split_strings(array)
    array_of_split_strings = []
    array.each do |x|
       array_of_split_strings << x.split(//)
     end
    return array_of_split_strings
  end

end
