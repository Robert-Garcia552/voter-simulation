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
        puts @@politicians.name
    end

end

test = Politician.new('Rob', 'Republican')
dan = Politician.new('Dan', 'Democrat')

Politician.group