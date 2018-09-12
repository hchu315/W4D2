# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :bigint(8)        not null, primary key
#  cat_id     :integer          not null
#  start_date :date             not null
#  end_date   :date             not null
#  status     :string           default("PENDING"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CatRentalRequest < ApplicationRecord
  
  STATUSES = ['PENDING', 'APPROVED', 'DENIED']
  
  validates :start_date, :end_date, presence: true
  validates :status, inclusion: {in: STATUSES}
  
  belongs_to :cat
  
  def overlapping_requests
    CatRentalRequest.where.not("start_date > ? OR end_date < ?", end_date, start_date)
    .where(cat_id: cat_id).where("id != ?", id)
  end
  
  def overlapping_approved_requests
    overlapping_requests.where("status = ?", 'APPROVED')
  end
  
  def does_not_overlap_approved_request
    !overlapping_approved_requests.exists?
  end
  
end

