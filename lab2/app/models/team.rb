class Team < ActiveRecord::Base
	validates :name_team, precense: true
	validates :name_team, :format => { :with => /^[a-zA-Z\d\s]*$/ } 
	validates :name_team, uniqueness: true
	validates :name_manager, precense: true
	validates :name_manager, uniqueness: true
	validates :flag, :format => { :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix }
	validates :uniform, :format => { :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix }
	validates :history, length: {minimum: 15, maximum: 200}
end
