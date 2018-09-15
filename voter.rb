class Voter
    @@voters = []
    attr_accessor   :name,
                    :politics

    def initialize(name, politics)
        @name = name
        @politics = politics
        @@voters << self
    end

    def self.all
        puts "Here are your voters:"
        @@voters.each do |voter|
            puts "#{voter.name} is a #{voter.politics}."
        end
    end

    def self.update(name)
        @@voters.each do |voter|
            if voter.name == name
                puts "New Name?"
                voter.name = gets.chomp.downcase.capitalize
                puts "New Politics ( L )iberal, ( C )onservative, ( T )ea Party, ( S )ocialist, or ( N )eutral?"
                politics = gets.chomp.downcase
                if politics == "l"
                    voter.politics = "Liberal"
                  elsif politics == "c"
                    voter.politics = "Conservative"
                  elsif politics == "t"
                    voter.politics = "Tea Party"
                  elsif politics == "s"
                    voter.politics = "Socialist"
                  elsif politics == "n"
                    voter.politics = "Neutral"
                  else
                    voter.politics = "Undecided"
                  end 
            end
        end
    end

    def self.destroy(name)
        @@voters.each do |voter|
            if voter.name == name
                puts "Are you sure you want to delete #{voter.name}, ( Y )es or ( N )o?"
                choice = gets.chomp.downcase
                if choice == "y"
                    @@voters.delete(voter)
                end
            end
        end
        puts "Successfully deleted voter!"
    end

end