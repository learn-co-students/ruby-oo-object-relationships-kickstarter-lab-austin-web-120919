class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        projects = ProjectBacker.all.select {|pb| pb.project == self}
        projects.map(&:backer)
    end
end