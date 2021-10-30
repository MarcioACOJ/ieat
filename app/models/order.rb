class Order < ApplicationRecord
    belongs_to :product
    belongs_to :user

    enum status:[:pending, :done]
end
