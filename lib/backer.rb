class Backer 

    #instance variables getters/setters
    attr_accessor :name

    #constructor
    def initialize(name)
        @name = name
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def find_projects
        ProjectBacker.all.select { |project_backer| project_backer.backer == self }
    end 

    def backed_projects 
        find_projects.collect { |project_backer| project_backer.project }
    end 

end 