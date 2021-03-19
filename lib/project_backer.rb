class ProjectBacker 

    #instance variables getters/setters
    attr_accessor :project, :backer 

    #class variables
    @@all = []

    #constructor
    def initialize(project, backer)
        @project = project
        @backer = backer 
        @@all << self
    end 

    #class methods
    def self.all
        @@all
    end 

end 