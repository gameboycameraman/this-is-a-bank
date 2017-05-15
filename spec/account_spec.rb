require 'account'

describe Account do

  subject(:account) {described_class.new}

  it "Account should have a default balance of 0 when open" do
    expect(account.balance).to eq 0
  end

  it "Can deposit money to the account" do
    account.deposit(1000)
    expect(account.balance).to eq 1000
  end

end
