require './politician'
require './voters'

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

        #     if "P"
        #         Politician.new()
        #         elections.push(politicians)
        #         puts "Successfully created #{politicians}."
            
        #     else 
        #         voters = []
        #         voters.push(Voter.new(voter, politics))
        #         elections.push(voters)
        #         puts "Successfully created #{voters.flatten}."
        #     end

        # when "L"
        #     # elections.each{ |politician, party| 
        #     puts "#{elections}"

        # when "U"
        #     puts "Who would you like to update?"
        #     name = gets.chomp
        #     if name == elections[:politicians][:name]
        #         puts "New Name?"
        #         name = gets.chomp
        #         puts "New Party?"
        #         party = gets.chomp

        #         if party == "D"
        #             party = elections[:politicians][:party] = "Democrat"
        #         elsif party == "R"
        #             party = elections[:politicians][:party] = "Republican"
        #         else
        #             party = "Unknown."
        #         end

        #         elections[:politicians][:name] = name
        #         elections[:politicians][:party] = party
               
        #     elsif name == elections[:voters][:name]
        #         puts "New Name?"
        #         name = gets.chomp
        #         puts "New Politics?"
        #         politics = gets.chomp

        #         if politics == "L"
        #             politics = elections[:voters][:politics] = "Liberal"
        #         elsif politics == "C"
        #             politics = elections[:voters][:politics] = "Conservative"
        #         elsif politics == "T"
        #             politics = elections[:voters][:politics] = "Tea Party"
        #         elsif politics == "S"
        #             politics = elections[:voters][:politics] = "Socialist"
        #         elsif politics == "N"
        #             politics = elections[:voters][:politics] = "Neutral"
        #         else
        #             politics = elections[:voters][:politics] = "Undecided"
        #         end   

        #         elections[:voters][:name] = name
        #         elections[:voters][:politics] = politics

        #     else
        #         puts "This person is not in the election."
        #     end

        # when "D"
        #     puts "Who would you like to delete?"
        #     name = gets.chomp
        #         if name ==  elections[:politicians][:name]
        #             elections.delete_if { |key, value| key = name }
        #         end

        when "exit", "quit"
            break

        end

    end
end