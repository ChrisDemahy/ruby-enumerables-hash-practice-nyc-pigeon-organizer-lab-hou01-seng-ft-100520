require "pry"
def nyc_pigeon_organizer(data)
  # Convert hash data provided into a different structured hash
  # Organizes pidgeons to be by name instead of by attribute
  new_data = Hash.new
  names_array = Array.new
  # Collect the names of the pidgeions into an array
  data.collect do |key,value|

    value.collect do |key, value|
      value.each { |item| names_array.push(item) }
      
    end
  end
  binding.pry
end
