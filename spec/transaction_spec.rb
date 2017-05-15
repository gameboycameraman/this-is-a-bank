require "transaction"
require 'account'

describe Transaction do

subject(:transaction) {described_class.new}
subject(:account) {described_class.new}


  it "Has an empty array of transaction" do
    expect(transaction.list_withdrawal).to be_empty
    expect(transaction.list_deposit).to be_empty
  end

  it "Can give the actual date and hour" do
    expect(transaction.actual_time).to eq "#{Time.now.strftime("%d/%m/%y" + " - " + "%H:%M:%S")}"
  end

  # it "Can add a new deposit to the list with the hour and date" do
  #   account.deposit(100)
  #   expect(account.transaction.list_withdrawal).to eq "#{Time.t.strftime("%d/%m/%y" + " - " + "%H:%M:%S" )} || || 100.00 || 100.00"
  # end

end
