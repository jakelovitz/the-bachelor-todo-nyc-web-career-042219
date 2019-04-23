require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] = "winner"
      return contestant["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |stats|
      if stats["occupation"] == occupation
        return stats["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |stats|
      if stats["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |stats|
      if stats["hometown"] == hometown
        return stats["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  array = [];
  data.each do |season_no, contestants|
    if season_no == season
      contestants.each do |stats|
        array.push(stats["age"].to_f)
      end
    end
  end
  average = array.inject{ |sum, el| sum + el } / array.length
  average.round(0)
end
