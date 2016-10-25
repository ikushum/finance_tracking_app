class Finance < ActiveRecord::Base
    validates :title, :amount, presence: true
end
