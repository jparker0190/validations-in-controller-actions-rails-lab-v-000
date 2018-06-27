class Author < ActiveRecord::Base
  validates :name, prescence: true
  validates :email, uniqueness: true
end
