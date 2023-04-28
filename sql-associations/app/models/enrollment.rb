# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  course_id  :bigint           not null
#  student_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Enrollment < ApplicationRecord
    # ENROLLMENT is the join table for 
    # user and course

    # belongs to User table/class thru student_id
    belongs_to :student,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :User

    # belongs to Course class thru course_id
    belongs_to :course,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Course,
        optional: true

        

    
end
