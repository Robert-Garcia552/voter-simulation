require './politician'
require './voter'

class World

	loop do
    puts "What would you like to do?\n ( C )reate, ( L )ist, ( U )pdate, ( D )elete, or exit"
    choice = gets.chomp.downcase

    case choice   
        when "c"
          puts "What would you like to create?\n ( P )olitician or ( V )oter"
            choice = gets.chomp.downcase
            case choice
              when "p"
                puts "Name?"
                name = gets.chomp.downcase
                @name = name.capitalize
                puts "Party?\n ( D )emocrat or ( R )epublican"
                @party = gets.chomp.downcase
                  if @party == "d"
                    @party = "Democrat"
                  elsif @party == "r"
                    @party = "Republican"
                  else
                    @party = "Unknown"
                  end
                new_politician = Politician.new(@name, @party)
                puts "Successfully created a #{new_politician.party} named #{new_politician.name}!"
              when "v"
                puts "Name?"
                @name = gets.chomp.capitalize
                puts "Politics?\n ( L )iberal, ( C )onservative, ( T )ea Party, ( S )ocialist, or ( N )eutral"
                politics = gets.chomp.downcase
                  if politics == "l"
                    @politics = "Liberal"
                  elsif politics == "c"
                    @politics = "Conservative"
                  elsif politics == "t"
                    @politics = "Tea Party"
                  elsif politics == "s"
                    @politics = "Socialist"
                  elsif politics == "n"
                    @politics = "Neutral"
                  else
                    @politics = "Undecided"
                  end 
                new_voter = Voter.new(@name, @politics)
                puts "Successfully created #{new_voter.name} registered as a #{new_voter.politics}!"
            end
        when "l"
          Politician.all
          Voter.all
        when "u"
          puts "Would you like to update a ( V )oter or ( P )olitician?"
          choice = gets.chomp.downcase
            if choice == "v"
              puts "Which voter would you like to update?"
              name = gets.chomp.downcase.capitalize
              Voter.update(name)
            elsif choice == "p"
              puts "Which politician would you like to update?"
              name = gets.chomp.downcase.capitalize
              Politician.update(name)
            end
        when "d"
          puts "Would you like to delete ( V )oter or ( P )olitician?"
          choice = gets.chomp.downcase
            if choice == "v"
              puts "Which voter would you like to delete?"
              name = gets.chomp.downcase.capitalize
              Voter.destroy(name)
            elsif choice == "p"
              puts "Which politician would you like to delete?"
              name = gets.chomp.downcase.capitalize
              Politician.destroy(name)
            end
          
          
        
        
      end
    end
end