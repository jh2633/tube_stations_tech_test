## Instructions
1. Fork and pull this repo
1. Install Ruby if not present on machine
1. Bundle the gems from the Gemfile using Bundler
1. Run RSpec to view the passing/failing tests
1. To run the program, open irb and type the following

  ```
  $require_relative 'tube'  
  $t = Tube.new
  $t.create_station_array
  $t.list_of_stations
  The above will return you an array with 10 stations.
  ```
1. You could modify the instructions to compare different arrays. The initialize method takes three different arguments, the first is a hash, second is the array you would like to examine, and the third is an array you would want to compare the previous array to.
1. If you use a custom array for the second argument, you will not need to run the "create_station_array" method.
1. The original JSON was not modified to preserve its source integrity, hence the extra step needed to convert each values to the stations_array


## The problem

Given a list of strings of London tube station names, find the combination of fewest tube station names that contains all the characters of the alphabet.

## How it will work

1. To start, we need two arrays, one contains all the tube station names, and the other all characters of the alphabet.
1. The method will take take the array of stations as a variable, and output an array of the fewest stations making up the alphabet.

## Challenges/Edge cases
1. More than one station could contain a needed letter. A method would be needed to select one from all available. (e.g. X in "Brixton" vs "Vauxhall")
1. A long station name implies more characters, however this does not imply more unique characters.

## The Solution
1. The quickest way to solve the problem is to sort the list of tube names by length, flatten individual tube names into arrays of characters, and then iterate from the longest name to the shortest.
1. We will compare each tube name array to the alphabet array, if the same character exists, then they will be removed from the alphabet array, and the method moves on to the next tube name.
1. If the tube name contains characters in the alphabet array, they will be added to the array shortest_list.
1. The iteration will stop once alphabet_array.length == 0.
1. The list_of_stations method will at the end return an array containing the fewest name combination
