class Project 

    #instance variables getters/setters
    attr_accessor :title

    #constructor
    def initialize(title)
        @title = title
    end 

    #instance methods
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def find_backers
        ProjectBacker.all.select { |project_backer| project_backer.project == self }
    end 

    def backers
        find_backers.collect { |project_backer| project_backer.backer }
    end

end 