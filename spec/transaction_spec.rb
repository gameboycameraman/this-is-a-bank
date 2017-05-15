require "transaction"

describe Transaction do

subject(:transaction) {described_class.new}

let(:list_withdrawal) {double :list_withdrawal}

  it "Has an empty array of transaction" do
    expect(transaction.list_withdrawal).to be_empty
    expect(transaction.list_deposit).to be_empty
  end

end
