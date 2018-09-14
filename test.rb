class World

    def create
        puts "What would you like to create?\n ( P )olitician or ( V )oter"
        choice = gets.chomp

        if choice == "P"
            Politician.new
    end

    create

end

