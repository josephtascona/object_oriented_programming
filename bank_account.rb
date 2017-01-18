class BankAccount
  attr_accessor :balance
  attr_accessor :interest_rate
  def deposit=(amount)
    @total_balance = amount
  end
  def total_balance
    @total_balance
  end
  def withdraw=(amount)
    @new_total_balance = (total_balance - amount)
  end
  def new_total_balance
    @new_total_balance
  end
  def gain_interest
    new_total_balance * interest_rate
  end
end
bank_account = BankAccount.new
bank_account.balance = 50
bank_account.interest_rate = 1.05
puts bank_account.balance
puts bank_account.interest_rate
bank_account.deposit = 30
puts bank_account.total_balance
bank_account.withdraw = 20
puts bank_account.new_total_balance
puts bank_account.gain_interest
