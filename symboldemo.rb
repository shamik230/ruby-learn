def get_command
  [:left, :right, :up, :down].sample
end

5.times do
  puts "Robot goes #{get_command}"
end
