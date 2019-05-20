binding.pry 
def nyc_pigeon_organizer(data)
  newArray = {}
  data.each do |key, value|
    if key == "color"
      self.each do |key, value|
        newArray << {key, nil}
      end
    end
    
    return(newArray)
end