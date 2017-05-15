class Account

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(money)
    raise "Sorry love, you can't add a negative amount." if negative_deposit?(money)
    @balance += money
  end

  def withdrawal(money)
    @balance -= money
  end

  private

  def negative_deposit?(money)
    money < 0
  end

end
