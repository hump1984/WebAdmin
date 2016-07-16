class Hour < ActiveRecord::Base
    belongs_to :project
    has_one :user
end
