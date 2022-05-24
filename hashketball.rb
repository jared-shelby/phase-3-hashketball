# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

# num_points_scored
def num_points_scored(player_name)
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if player_name == player[:player_name] then
        return player[:points]
      end
    end
  end
end

# shoe_size
def shoe_size(player_name)
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if player_name == player[:player_name] then
        return player[:shoe]
      end
    end
  end
end

# team_colors
def team_colors(team_name)
  game_hash.each do |team, team_info|
    if team_name == team_info[:team_name] then
      return team_info[:colors]
    end
  end
end

# team_names
def team_names
  team_names = Array.new
  game_hash.each do |team, team_info|
    team_names << team_info[:team_name]
  end
  return team_names
end

# player_numbers
def player_numbers(team_name)
  player_numbers = Array.new
  game_hash.each do |team, team_info|
    if team_name == team_info[:team_name] then
      team_info[:players].each do |player|
        player_numbers << player[:number]
      end
    end
  end
  return player_numbers
end

# player_stats
def player_stats(player_name)
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if player_name == player[:player_name] then
        return player
      end
    end
  end
end

# big_shoe_rebounds
def big_shoe_rebounds
  most_rebounds = 0
  biggest_shoe = 0
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if player[:shoe] > biggest_shoe then
        biggest_shoe = player[:shoe]
        most_rebounds = player[:rebounds]
      end
    end
  end
  return most_rebounds
end

# most_points_scored
def most_points_scored
  most_points = 0
  player_with_most_points = ""
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if player[:points] > most_points then
        most_points = player[:points]
        player_with_most_points = player[:player_name]
      end
    end
  end
  return player_with_most_points
end

# winning_team
def winning_team
  home_points = 0
  away_points = 0
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if team == "home" then
        home_points += player[:points]
      else
        away_points += player[:points]
      end
    end
  end

  if home_points > away_points then
    return game_hash[:home][:team_name]
  else
    return game_hash[:home][:team_name]
  end
end

# player_with_longest_name
def player_with_longest_name
  longest_name_length = 0
  player_with_longest_name = ""
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      current_name_length = player[:player_name].length
      if current_name_length > longest_name_length then
        longest_name_length = current_name_length
        player_with_longest_name = player[:player_name]
      end
    end
  end
  return player_with_longest_name
end

# player_with_most_steals (helper for long_name_steals_a_ton?)
def player_with_most_steals
  most_steals = 0
  player_with_most_steals = ""
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if player[:steals] > most_steals then
        most_steals = player[:steals]
        player_with_most_steals = player[:player_name]
      end
    end
  end
  return player_with_most_steals
end

# long_name_steals_a_ton?
def long_name_steals_a_ton?
  return player_with_longest_name == player_with_most_steals
end