class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
    has_many :actors, through: :characters

    def actors_list
        empty = []
        self.actors.each do |act|
            empty << "#{act.first_name} #{act.last_name}"
        end
        empty
    end
end