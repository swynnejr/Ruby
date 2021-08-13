require_relative 'bankaccount'

RSpec.describe BankAccount do
    before(:each) do
        @bankaccount1 = BankAccount.new
    end
    it 'has a getter for checking account balance' do
        expect(@bankaccount1.checking_account).to eq(20)
    end
    it 'has a getter for total account balance' do
        expect(@bankaccount1.total_money).to eq 40
    end
    it 'has a function to allow the user to withdraw cash' do
        expect(@bankaccount1.checking_withdrawl(10)).to eq 10
    end

    it "raises an error if user tries to withdraw more money than they have in checkings" do
        expect{ @bankaccount1.checking_withdrawl(100) }.to raise_error(RuntimeError)
    end

    it "raises an error if user tries to withdraw more money than they have in savings" do
        expect{ @bankaccount1.savings_withdrawl(100) }.to raise_error(RuntimeError)
    end

    it "raises an error when the user attempts to retrieve the total number of bank accounts" do
        expect{ @bankaccount1.number_of_accounts }.to raise_error(NoMethodError)
    end

    it "raises an error when the user attempts to set the interest rate" do
        expect{ @bankaccount1.interest_rate(0.1) }.to raise_error(NoMethodError)
    end
end
