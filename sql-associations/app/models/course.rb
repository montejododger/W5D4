# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string           not null
#  prereq_id     :bigint
#  instructor_id :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Course < ApplicationRecord

    # a Course will have many users/user
    #  Has many Users thru Enrollment table
    # via course_id
    has_many :sign_ups, #this builds an association to enrollment
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Enrollment

    has_many :students,
        through: :sign_ups, #this sepcifies that we want to fethc the associated students through the :sign_up table
        source: :student # 
    
    # each course will have only one prerequisite 
    has_one :prerequisite,
        primary_key: :prereq_id,
        foreign_key: :id,
        class_name: :Course 

    
    
    
end
