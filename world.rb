require './politician'
require './voters'

class World

    elections = [ 
        
    ]

    loop do
    

puts "What would you like to do?\n ( C )reate, ( L )ist, ( U )pdate, ( D )elete, or exit"
        choice = gets.chomp

    case choice   

        when "C"

            puts "What would you like to create?\n ( P )olitician or ( V )oter"
                choice = gets.chomp

            case choice
                when "P"
                        
                        puts "Name?"
                        @name = gets.chomp
                        puts "Party?\n ( D )emocrat or ( R )epublican"
                        @party = gets.chomp
                    
                            if @party == "D"
                                @party = "Democrat"
                            elsif @party == "R"
                                @party = "Republican"
                            else
                                @party = "Unknown"
                            end
                        
                        @Politician = Politician.new(@name, @party)
                        @Politician.create

        #         when "V"
        #             puts "Name?"
        #             voter = gets.chomp
        #             puts "Politics?\n ( L )iberal, ( C )onservative, ( T )ea Party, ( S )ocialist, or ( N )eutral"
        #             politics = gets.chomp
                    
        #                 if politics == "L"
        #                     politics = "Liberal"
        #                 elsif politics == "C"
        #                     politics = "Conservative"
        #                 elsif politics == "T"
        #                     politics = "Tea Party"
        #                 elsif politics == "S"
        #                     politics = "Socialist"
        #                 elsif politics == "N"
        #                     politics = "Neutral"
        #                 else
        #                     politics = "Undecided"
        #             end     
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