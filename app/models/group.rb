class Group < ApplicationRecord

  has_many :grouped_contacts
  has_many :contacts, through: :grouped_contacts
  
end
