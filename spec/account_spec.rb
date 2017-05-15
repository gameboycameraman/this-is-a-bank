require 'account'

describe Account do

  subject(:account) {described_class.new}

  it "Account should have a default balance of 0 when open" do
    expect(account.balance).to eq 0
  end

end
