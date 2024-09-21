class Activity

    attr_reader :name
    attr_accessor :participants

    def initialize(name)
        @name = name
        @participants = Hash.new
    end
