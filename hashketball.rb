def game_hash ()
  game = {:home => 
  {:team_name => "Brooklyn Nets", :colors => ["Black", "White"], :players => [
      {:player_name => "Alan Anderson", :number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1
      }, 
      {:player_name => "Reggie Evans", :number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7
      },
      {:player_name => "Brook Lopez", :number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15
      },
      {:player_name => "Mason Plumlee", :number => 1, :shoe => 19, :points => 26, :rebounds => 11, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5
      },
      {:player_name => "Jason Terry", :number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1
      }]}, 
    :away => 
    {:team_name => "Charlotte Hornets", :colors => ["Turquoise", "Purple"], :players => [
      {:player_name => "Jeff Adrien", :number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2
      },
      {:player_name => "Bismack Biyombo", :number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10
      },
      {:player_name => "DeSagna Diop", :number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5
      },
      {:player_name => "Ben Gordon", :number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0
      },
      {:player_name => "Kemba Walker", :number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 7, :blocks => 5, :slam_dunks => 12
      }]
    }}
end 

def num_points_scored (player)
  player_data = find_player_data(player)
  player_data[:points]
end

def shoe_size(player)
  player_data = find_player_data(player)
  player_data[:shoe]
end

def team_colors(team)
  team_data = find_team_data(team)
  team_data[:colors]
end

def team_names ()
  names = []
  teams = game_hash
  
  names << teams[:home][:team_name]
  names << teams[:away][:team_name]
  
  names
end

def player_numbers (team)
  numbers = []
  team_data = find_team_data(team)
  team_data[:players].collect do |player|
    numbers << player[:number]
  end
  numbers
end

def player_stats (player)
  stats = {}
  player_info = find_player_data(player)

  stats = {:assists => player_info[:assists], :blocks => player_info[:blocks], :number => player_info[:number], :points => player_info[:points], :rebounds => player_info[:rebounds], :shoe => player_info[:shoe], :slam_dunks => player_info[:slam_dunks], :steals => player_info[:steals]}
  
end

def big_shoe_rebounds ()
  return_stat = 0
  compared = 0
  teams = []
  
  names = team_names 
  teams << find_team_data(names[0])
  teams << find_team_data(names[1])

  pp "Teams: #{names[0]} and #{names[1]}"

  teams.collect do |team|
    team[:players].collect do |player|
      pp "Player: #{player[:player_name]}"
      if player[:shoe] > compared
        pp "Found a bigger shoe!"
        compared = player[:shoe]
        return_stat = player[:rebounds]
      end
    end
  end
  
  return_stat
end

def most_points_scored ()
end

def winning_team ()
end

def player_with_longest_name ()
end

def long_name_steals_a_ton? ()
end


def find_player_data(input)
  data = game_hash
  data.collect do |segment| 
    segment.shift
    segment.collect do |team|
      team[:players].collect do |player|
        if player[:player_name] == input
          return player
        end
      end
    end
  end
  pp "Did not find player."
end


def find_team_data(input)
  data = game_hash
  data.collect do |segment| 
    segment.shift
    segment.collect do |team|
      if team[:team_name] == input
        return team
      end
    end
  end
  pp "Did not find team."
end

def find_biggest (find_key, return_key)
#  return_stat = 0
#  compared = 0
#  teams = []
  
#  names = team_names 
#  teams << find_team_data(names[0])
#  teams << find_team_data(names[1])
  
#  teams.collect do |team|
#    team[:players].collect do |player|
#      if player[find_key] > compared
#        compared = player[find_key]
#        return_stat = player[return_key]
#      end
#    end
#  end
  
#  return_stat
end