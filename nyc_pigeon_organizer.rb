require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  data.each do |attribute, type|
    type.each do |type2,name|
      name.each do |names|
        if pigeon_list.keys.include?(names)&&pigeon_list[names].include?(attribute)
          pigeon_list[names][attribute].push(type2.to_s)
        elsif pigeon_list.keys.include?(names)&&!(pigeon_list[names].include?(attribute))
          pigeon_list[names][attribute] = [type2.to_s]
        else
      pigeon_list[names] = Hash.new
      pigeon_list[names][attribute] = [type2.to_s]
    end
    end
  end
end
  pigeon_list
end
