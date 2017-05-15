require "transaction"

describe Transaction do

subject(:transaction) {described_class.new}

  it "Has an empty array of transaction" do
    expect(transaction.list_withdrawal).to be_empty
    expect(transaction.list_deposit).to be_empty
  end

  it "Can add a new deposit to the list with the hour and date" do
    t = Time.now
    transaction.new_deposit(100)
    expect(transaction.list_withdrawal).to eq "#{t.strftime("%d/%m/%y" + " - " + "%H:%M:%S" )} || || 100.00 || 100.00"
  end

end
