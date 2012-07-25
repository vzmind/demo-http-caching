class Person < ActiveRecord::Base
  belongs_to :company
  attr_accessible :firstname, :lastname, :company_id
end
