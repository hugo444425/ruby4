class Stadium < ActiveRecord::Base
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :city, presence: true
	validates :city, uniqueness: true
	
	validates :construction_date, precense: true
	validates :construction_date, 
	validates :capacity,  :numericality => { :greater_than_or_equal_to => 0 }
	validates :picture, :format => { :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix }
	
	validates :check_cities

	def check_cities
		errors.add(:city, " no es valido") if (:city != "Belo Horizonte" || :city != "Brasilia" || :city != "Cuiaba" 
				|| :city != "Curitiba" || :city != "Fortaleza" || :city != "Manaus" || :city != "Natal"
				|| :city != "Recife" || :city != "Rio de Janeiro" || :city != "Salvador" || :city != "Sao Paulo"
	end  
end
