
require_relative 'student'
require 'date'

# def age(day, month, year)
#    date_of_birth = Date.new(year, month, day)
#    today  = Date.today
#    age = (today.year - date_of_birth.year).to_i
#    return age
# end

# # puts age(12, 10, 1990)

# 5.times do |a|
#    puts "Ingrese Año"
#    year = gets.chomp
#    puts "Ingrese Mes"
#    month = gets.chomp
#    puts "Ingrese Día"
#    day = gets.chomp

#    age_now = age(year, month, day)
#    puts "La edad es: #{age_now}"
# end

require 'date'
student = "1990-10-08"
date_of_birth = Date.parse(student)
now = Date.today
diff = (now - date_of_birth).to_i
puts diff / 365





