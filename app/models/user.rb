class User < ApplicationRecord
  include ActiveModel::Validations
  validates_presence_of :first_name, :last_name, :email, :city, :state, :score
  validates_with EmailValidator
  
  def full_name
    self.first_name + " " + self.last_name
  end
end
