class Politician
    @@politicians = []
    attr_accessor   :name,
                    :party

    def initialize(name, party)
        @name = name
        @party = party
        @@politicians << self
    end

    def self.group
        @@politicians.each do |politician|
            puts "#{politician.name} is a #{politician.party}."
        end
    end

end

test = Politician.new('Rob', 'Republican')
dan = Politician.new('Dan', 'Democrat')

Politician.group