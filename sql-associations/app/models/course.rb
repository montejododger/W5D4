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
    has_many :user,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Enrollment


end
