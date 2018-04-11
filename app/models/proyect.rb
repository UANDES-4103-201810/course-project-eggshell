class Proyect < ApplicationRecord
  belongs_to :User
  has_one :descriptive_page
  has_many :user_funds_proyects
  has_many :admin_administrate_proyects
  has_many :promises
  has_many :images
  has_many :videos
  validates :goal,  numericality: {:greater_than_or_equal_to => 0}
  validates :money_colected,  numericality: {:greater_than_or_equal_to => 0}
  validates :name, length: {in: 2..20}
  validates :description, length: {:minimum => 20}
  validates :category, length: {:minimum => 2}
  before_save  do start_later end
  before_save do state_validation end

end
def start_later
  puts start_date.to_date
  puts expiration_date.to_date
  if expiration_date.to_s.to_date < start_date.to_s.to_date
    puts start_date.to_s.to_date
    puts "error, fecha no valida "
    throw :abort
  end

end

def state_validation
  if state != "waiting"
    if state != "aproved"
      puts("invalid")
      throw :abort
    end
  end
end