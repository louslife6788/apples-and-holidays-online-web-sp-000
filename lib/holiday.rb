require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  ans =""
 holiday_hash.each do |key, val|
    val.each do |sec_key, sec_val|
        if sec_key == :fourth_of_july 
            ans << sec_val[1]
           
        end
    end
end

ans

    

  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |key, val|
    if key == :winter
        val.each do |sec_key, sec_val|
            sec_val << supply
        end
    end
end

  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |key, val|
    if key == :memorial_day
      val << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
     
  
    holiday_hash[season][holiday_name] = supply_array
  
    holiday_hash
  end

  # code here
  # remember to return the updated hash



def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |key, val |
      puts "#{key.capitalize}:"
      val.each do |sec_key, sec_val|
        puts"  #{sec_key.to_s.split("_").map { |w| w.capitalize }.join(" ")}: #{sec_val.join(", ")}"
      end
    end
  end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.



def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
  
end







