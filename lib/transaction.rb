class Transaction

  attr_reader :list_deposit, :list_withdrawal

  def initialize
    # @account = Account.new
    @list_deposit = []
    @list_withdrawal = []
  end

  def actual_time
    Time.now.strftime("%d/%m/%y" + " - " + "%H:%M:%S")
  end

  # def new_deposit(money)
  #   self.list_deposit.push(Time.now.strftime("%d/%m/%y" + " - " + "%H:%M:%S" ) + " || " + " || " + money + " || " + @account.balance)
  # end

end
