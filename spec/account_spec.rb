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

  it "Cant' add a negative deposit amount to the account" do
    account.deposit(-500)
    expect(account.balance).to raise_error "You can't add a negative amount love"
  end

  it "Can withdrawal money and it deduct it from the account" do
    account.deposit(1000)
    account.withdrawal(500)
    expect(account.balance).to eq 500
  end

end
