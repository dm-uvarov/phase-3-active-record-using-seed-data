# should clears terminal
if RUBY_PLATFORM =~ /win32|win64|\.NET|windows|cygwin|mingw32/i
    system('cls')
  else
    system('clear')
end


print "Generating some data here["

10.times { 
    # imitating synchronious seeding
    sleep 0.5
    print "."
    5.times { 
        
        Game.create(
            title:      Faker::Game.title,
            genre:      Faker::Game.genre,
            platform:   Faker::Game.platform,
            price:      rand(0..60)
        )

        }
    }
puts "]"
sleep 1
puts "Done."