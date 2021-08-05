class Dojo < ActiveRecord::Base
    has_many :ninjas, dependent: :destroy
    validates :name, :city, presence: true
    validates :state, length: { is: 2 }

end
