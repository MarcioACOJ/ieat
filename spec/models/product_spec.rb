require 'rails_helper'

RSpec.describe Product do
it { should belong_to(:restaurant) }
it { should validates_presence_of :restaurant }
end