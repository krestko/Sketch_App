class Component < ApplicationRecord
  validates :component_name, presence: true
  has_many :settings, :dependent => :destroy
end
