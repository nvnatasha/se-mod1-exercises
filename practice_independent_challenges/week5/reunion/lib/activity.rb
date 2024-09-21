class Activity

    attr_reader :name
    attr_accessor :participants

    def initialize(name)
        @name = name
        @participants = Hash.new
        @cost = 0
    end

    def add_participant(name, cost)
       @participants[name] = cost
    end

    def total_cost
        @participants.values.sum
    end

    def split
        (total_cost / @participants.keys.count)
    end

    def owed
       split_amount = split
       @participants.transform_values { |cost| split_amount - cost }
    end
end