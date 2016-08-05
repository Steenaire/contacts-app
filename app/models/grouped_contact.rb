class GroupedContact < ApplicationRecord

  belongs_to :contact
  belongs_to :group

end
