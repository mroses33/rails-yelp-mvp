class Restaurant < ApplicationRecord
  validates :name, :address, presence: :true
  validates :category, inclusion: { in:["chinese", "italian", "japanese", "french", "belgian"],
    message: "Invalid category, try again!" }

  has_many :reviews, dependent: :destroy
end
