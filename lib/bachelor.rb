def get_first_name_of_season_winner(data, season)
  data[season].each do |pairs|
      #e.g. |"name": "Becca Tilley"|
          if pairs["status"].downcase ==  "winner"
            return pairs["name"].split(" ").first
        end
    end



full_name.split(" ")[0]
end

def get_contestant_name(data, occupation)
data.each do |season, stats|
  stats.each do |pairs|
    if pairs["occupation"] == occupation
    return pairs["name"]
  end
end
end
end

def count_contestants_by_hometown(data, hometown)
i = 0
data.each do |season, x|
x.each do |pairs|
  if pairs["hometown"] == "#{hometown}"
   i += 1
   end
 end
end
 return i
end


def get_occupation(data, hometown)
  data.each do |season, x|
  x.each do |pairs|
    if pairs["hometown"] == "#{hometown}"
      return pairs["occupation"]
end
end

end
end


def get_average_age_for_season(data, season)
i = 0
gross = 0
data[season].each do |pairs|
  gross = gross + pairs["age"].to_f
  i += 1
end
(gross / i).round
end
