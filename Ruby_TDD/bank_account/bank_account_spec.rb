require_relative 'bankaccount'

RSpec.describe BankAccount do
    before(:each) do
        @bankaccount1 = BankAccount.new
    end
    it 'has a getter for checking account balance' do
        expect(@bankaccount1.checking_account).to eq(20)
    end
    it 'has a getter for total account balance' do
        expect(@bankaccount1.total).to be true
    end
    it 'has a function to allow the user to withdraw cash'

end
