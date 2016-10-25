class Finance < ActiveRecord::Base
    validates :title, :amount, presence: true
    
  def self.debt
    debt = 0
    all.each do |finance|
        debt += finance.amount if finance.amount < 0
    end
    return debt
  end
  
  def self.balance
      balance=0
      all.each do |finance|
          balance+=finance.amount if finance.amount>=0 
      end
   return balance
  end

  def self.total
    return balance+debt
  end
end
