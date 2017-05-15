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

  it "Raises an error if try to add a negative deposit amount from the account" do
    expect { account.deposit(-500) }.to raise_error "Sorry love, you can't add a negative amount."
  end

  it "Can withdrawal money and it deduct it from the account" do
    account.deposit(1000)
    account.withdrawal(500)
    expect(account.balance).to eq 500
  end

  it "Raises and error if try to substract a negative withdrawal amout from the account" do
    account.deposit(500)
    expect { account.withdrawal(-100) }.to raise_error "Sorry love, you can't withdrawal a negative amount."
  end

end
