# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord

    # student will be enrolled in many courses
    # via Enrollment table/class
    has_many :enrollments,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :Enrollment

    #through: find courses each student is enrolled in
    has_many :enrolled_courses
        has_many :courses, 
        through: :enrolled_courses
end
