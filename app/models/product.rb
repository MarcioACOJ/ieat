class Product < ApplicationRecord
 belongs_to :restaurant
 validates_presence_of :restaurant
end

