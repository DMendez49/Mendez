require "pry"
require "colorize"

def puts_git(cmd)
  puts `git #{cmd} -h`
  sleep(3)
  print `clear`
end 

def menu
  puts "MAIN MENU".colorize(:cyan)
  puts "1: Enter git command".colorize(:cyan)
  puts "2: Exit".colorize(:cyan)
  choice = gets.to_i

  case choice
  when 1
    puts "Enter get command:".colorize(:green)
    puts_git(gets.strip)
  when 2
    exit
  else
    puts "Invalid Choice".colorize(:red)
    menu
  end
end

menu