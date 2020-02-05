$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
total = 0
movie = 0
while movie < director_data[:movies].length do
total += director_data[:movies][movie][:worldwide_gross]
movie += 1
end
total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
director = 0  
while director < nds.count do 
movie = 0 
total_gross = 0 
while movie < nds[director][:movies].count do 
total_gross += gross_for_director(nds[director])
result[nds[director][:name]] = total_gross 
movie += 1 
end 
director += 1 
end 
result
end

