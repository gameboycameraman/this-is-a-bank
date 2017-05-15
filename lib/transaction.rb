class Transaction

  attr_reader :list_deposit, :list_withdrawal

  def initialize
    @list_deposit = []
    @list_withdrawal = []
  end

end
