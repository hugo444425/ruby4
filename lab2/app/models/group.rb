class Group < ActiveRecord::Base
		validates :group_name, presence: true
		validates :group_name, uniqueness: true
		validates :group_name, length: {minimum: 1, maximum: 1}
end
