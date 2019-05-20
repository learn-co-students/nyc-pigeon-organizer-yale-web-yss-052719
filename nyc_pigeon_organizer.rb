def nyc_pigeon_organizer(data)
  # write your code here!
  list = {}
  data.each do |key, hash|
    if key == :gender
      hash.each do |gender, names|
        names.each do |name|
          list[name] = {gender: [gender.to_s]}
          list[name][:color] = []
        end
      end
    end
  end
  data[:lives].each do |place, names|
    names.each do |name|
      list[name][:lives] = [place]
    end
  end
  data[:color].each do |color, names|
    names.each do |name|
      list[name][:color] << color.to_s
    end
  end
  list
end
