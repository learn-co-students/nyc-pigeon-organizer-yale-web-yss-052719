def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {} #change info from symbol to string
  data.each do |key, val| #key category, value subcategory
    val.each do |info, arr| #info subcategory, arr array of names
      arr.each do |ppl| #ppl people's names
        if pigeon_list.include?(ppl) #check if person has keys
          if pigeon_list[ppl].include?(key) #if person has key, add info
            pigeon_list[ppl][key] << info.to_s
          else  #change level to new format
            pigeon_list[ppl][key] = [info.to_s]
          end
        else
          pigeon_list[ppl] = {key => [info.to_s]}
        end
      end
    end
  end
  pigeon_list
end
