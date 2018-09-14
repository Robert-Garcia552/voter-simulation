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
                voter.name = gets.chomp
                puts "New Politics?"
                voter.politics = gets.chomp
            end
        end
    end

    def self.destroy(name)
        @@voters.each do |voter|
            if voter.name == name
                puts "Are you sure you want to delete #{voter.name}, ( Y )es or ( N )o?"
                choice = gets.chomp.downcase
                if choice == 'y'
                    @@voters.delete(voter)
                end
            end
        end
    end

end