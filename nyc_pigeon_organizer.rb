require "pry"
def nyc_pigeon_organizer(data)
  # Convert hash data provided into a different structured hash
  # Organizes pidgeons to be by name instead of by attribute
  new_data = Hash.new
  names_array = Array.new
  category = ""
  descrption = ""
  # Collect the names of the pidgeions into an array
  data.collect do |key,value|
    category = key
    value.collect do |key, value|
      description = key
      # Now we are at the inner arrays of names for each category and description
      # Push all the names to an array so we can sort them
      value.each { |item| new_data[item].store([category, description]) }
      # Get rid of any duplicate names in the array
      names_array.uniq!

    end
  end


  binding.pry
end
