def block_method
  puts "before block"
  yield ("This is a string")
  puts "after block"
end

block_method { |string| puts string }


colors = ["blue", "red", "purple", "green", "black", "brown"]

player_scores = {
  newton: 37.8,
  peterson: 2.6,
  murray: 14.5,
  cooks: 6.8,
  benjamin: 22.8
}

p colors

colors.each do |color|
  puts color
end

p colors

puts player_scores

player_scores.each do |player, score|
  puts "#{player} : #{score}"
end

puts player_scores

p colors

colors.map! do |color|
  puts color
  color + " is a color"
end

p colors

puts player_scores

player_scores.map do |player, score|

  score += 1
  puts "#{player} : #{score}"
end

puts player_scores

p colors
colors.delete_if {|color| color[0] == 'b'}
p colors

p player_scores
player_scores.delete_if {|player, score| player == :benjamin || score < 10}
p player_scores


p colors
colors.keep_if {|color| color[0] == 'b'}
p colors

p player_scores
player_scores.keep_if {|player, score| player == :benjamin || score < 10}
p player_scores

p colors
new_colors = colors.select {|color| color[0] == 'b'}
p new_colors

p player_scores
new_player_scores = player_scores.select {|player, score| player == :benjamin || score < 10}
p new_player_scores

p colors
new_colors = colors.drop_while {|color| color[0] == 'b'}
p new_colors

p player_scores
new_player_scores = player_scores.drop_while {|player, score| player == :newton || score < 10}
p new_player_scores


