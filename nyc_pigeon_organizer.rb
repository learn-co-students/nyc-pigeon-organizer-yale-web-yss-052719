def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_names = data[:gender].values.flatten
  new_data = {}

  pigeon_names.each do |name|
    new_data[name] = {}
    new_data[name][:color] = []
    new_data[name][:gender] = []
    new_data[name][:lives] = []

    data[:color].each do |color, array|
      if array.any? {|e| e == name}
        new_data[name][:color] << color.to_s
      end
    end

    data[:gender].each do |gender, array|
      if array.any? {|e| e == name}
        new_data[name][:gender] << gender.to_s
      end
    end

    data[:lives].each do |place, array|
      if array.any? {|e| e == name}
        new_data[name][:lives] << place.to_s
      end
    end


  end

  new_data

end
