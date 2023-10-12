class ContactSubmission < ApplicationRecord
  attr_accessor :name, :email, :phone, :message

  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :message, presence: true
end
