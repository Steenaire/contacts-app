class Contact < ApplicationRecord

  has_many :grouped_contacts
  has_many :groups, through: :grouped_contacts

  def updated_friendly_time
    updated_at.strftime("%B %e, %Y")
  end

  def full_name
    name = "#{first_name} #{last_name}"
  end

  def japanese_phone_number
    number = "+81 #{phone_number}"
  end

  def only_johns
    if first_name == "John"
      return true
    else
      return false
    end
  end

end
