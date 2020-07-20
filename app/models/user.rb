class User
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save_user
    end

    def save_user
        @@all << self     
    end

    def self.all
        @@all
    end

    def new_project(name, goal)
        Project.new(name, self, goal)
    end

    def new_pledge(project, amount)
        Pledge.new(project, self, amount)
    end

    def self.highest_pledge
        Pledge.all.max{|a, b| a.amount <=> b.amount}.user
    end

    def my_projects
        Pledge.all.map {|pledge| pledge.project if pledge.user == self}.compact.uniq
    end

    def self.multi_pledger
        self.all.select {|user| user if user.my_projects.length > 1}
    end

    def self.project_creator
        Project.all.map {|project| project.user }.uniq
    end

end