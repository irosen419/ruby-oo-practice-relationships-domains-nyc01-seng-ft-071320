class Pledge
    attr_accessor :project, :user, :amount

    @@all = []

    def initialize(project, user, amount)
        @project = project
        @user = user
        @amount = amount
        project.pledge(amount)
        project.count_pledges
        save_pledges
    end

    def save_pledges
        @@all << self
    end

    def self.all
        @@all
    end

    def this_pledges_project
        Project.all.select {|pledge| pledge == self}
    end

    def this_pledges_user
        User.all.select {|pledge| pledge == self}
    end
end