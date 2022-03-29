class User < ApplicationRecord
  validates_presence_of :first_name, :last_name, :email, :city, :state, :score

  def full_name
    self.first_name + " " + self.last_name
  end
end
