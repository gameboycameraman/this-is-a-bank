class Account

  attr_reader :balance

  def initialize
    @transaction = Transaction.new
    @balance = 0
  end

  def deposit(money)
    raise "Sorry love, you can't add a negative amount." if negative_amount?(money)
    @balance += money
    # @transaction.new_deposit(money)
  end

  def withdrawal(money)
    raise "Sorry love, you can't withdrawal a negative amount." if negative_amount?(money)
    @balance -= money
  end

  private

  def negative_amount?(money)
    money < 0
  end

end
