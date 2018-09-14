class Politician
    @@politicians = []
    attr_accessor   :name,
                    :party

    def initialize(name, party)
        @name = name
        @party = party
        @@politicians << self
    end

    def self.all
        puts "Here are your politicians:"
        @@politicians.each do |politician|
            puts "#{politician.name} is a #{politician.party}."
        end
    end

    def self.update(name)
        @@politicians.each do |politician|
            if politician.name == name
                puts "New Name?"
                politician.name = gets.chomp
                puts "party?"
                politician.party = gets.chomp
            end
        end
    end

    def self.destroy(name)
        @@politicians.each do |politician|
            if politician.name == name
                puts "Are you sure you want to delete #{politician.name}, ( Y )es or ( N )o?"
                choice = gets.chomp.downcase
                if choice == 'y'
                    @@politicians.delete(politician)
                end
            end
        end
    end

end

rob = Politician.new('Rob', 'Republican')
dan = Politician.new('Dan', 'Democrat')

puts "delete who?"

name = gets.chomp.capitalize
Politician.destroy(name)

Politician.all