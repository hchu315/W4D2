# == Schema Information
#
# Table name: cats
#
#  id          :bigint(8)        not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord
  COLORS = %w(black brown white calico orange grey)
  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :color, inclusion: {in: COLORS}
  validates :sex, inclusion: {in: ['M','F']}
  
  has_many :rental_requests,
  foreign_key: :cat_id,
  class_name: :CatRentalRequest,
  dependent: :destroy
end 
