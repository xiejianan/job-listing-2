class Job < ApplicationRecord
  has_many :resumes

  def publish!
    self.is_hidden =false
    self.save
  end

  def hide!
    self.is_hidden =true
    self.save
  end

  validates :title,presence:true
  validates :activity_time,presence:true
  validates :activity_address,presence:true
  validates :contact_email,presence:true
  validates :wage_upper_bound,presence:true
  validates :wage_lower_bound,numericality:{greater_than: 99}

  scope :published, -> { where(is_hidden:false) }
  scope :recent, -> {order('created_at desc') }
end
