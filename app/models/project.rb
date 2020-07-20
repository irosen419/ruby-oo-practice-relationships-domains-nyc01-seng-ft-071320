class Project
    attr_accessor :name, :user, :goal, :pledge_total, :pledge_count

    @@all = []

    def initialize(name, user, goal, pledge_total=0, pledge_count=0)
        @name = name
        @user = user
        @goal = goal
        @pledge_total = pledge_total
        @pledge_count = pledge_count
        save_project
    end

    def save_project
        @@all << self
    end

    def self.all
        @@all
    end

    def pledge(amount)
        @pledge_total += amount
    end

    def count_pledges
        @pledge_count += 1
    end

    def self.no_pledges
        self.all.select {|project| project.pledge_total == 0}
    end

    def self.above_goal
        self.all.select {|project| project.pledge_total >= project.goal}
    end

    def self.most_backers
        highest_pledge_count = 0
        highest_pledged_project = nil
        self.all.select do |project|
            if project.pledge_total >= highest_pledge_count
                highest_pledge_count = project.pledge_total
                highest_pledged_project = project
            end
        end
        highest_pledged_project
    end
end