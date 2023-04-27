# == Schema Information
#
# Table name: people
#
#  id         :bigint           not null, primary key
#  name       :string
#  house_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Person < ApplicationRecord
    # this adds two vaslidation rules
    # once for each attribute to be validated
    # presence: true -- attribute must be present and no blank to be valid
    validates :name, presence: true
    validates :house_id, presence: true


    belongs_to 
    :house, 
    primary_key: 'id', 
    foreign_key: 'house_id'
end
