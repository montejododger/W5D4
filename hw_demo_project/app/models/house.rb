class House < ApplicationRecord
    validates :address, presence: true

    #                    the other class
#has_many is a one to many relationships
    has_many 
    :residents,
    class_name: 'Person',
    foreign_key: 'house_id'
end
