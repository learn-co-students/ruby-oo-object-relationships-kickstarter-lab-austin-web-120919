class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        ProjectBacker.all.select{|backed_projects| backed_projects.project == self}.map{|backed_project| backed_project.backer}
    end
end