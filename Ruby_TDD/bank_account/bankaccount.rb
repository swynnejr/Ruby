class BankAccount
    # ONLY NEEDS READER, SINCE THESE SHOULDNT BE MANIPULATED
    attr_reader :account_number, :checking_account, :savings_account
    @@count = 0
    def initialize
        @account_number = create_account
        @checking_account = 20
        @savings_account = 20
        @@count += 2
        @interest_rate = 0.01
    end
    def checking_balance
        puts @checking_account
        self
    end
    def savings_balance
        puts @savings_account
        self
    end
    def checking_deposit(amount)
        @checking_account += amount
    end
    def savings_deposit(amount)
        @savings_account += amount
    end
# CHECK SOLUTIONS DID IT A COOL WAY
    def deposit(account, amount)
        if account.downcase == "checking"
        @checking += amount
        else
        @saving += amount
        end
    end
    # def withdrawal(account, amount)
    #     if account.downcase == "checking"
    #         if @checking - amount < 0
    #             raise "Insufficient Funds, you have #{@checking} in this account"
    #         else
    #             @checking -= amount
    #         end
    #     else
    #         if @saving - amount < 0
    #             raise "Insufficient Funds, you have #{@saving} in this account"
    #         else
    #             @saving -= amount
    #         end
    #     end
    # end
    def checking_withdrawl(amount)
        if @checking_account - amount < 0
            p "You're broke."
        else
            @checking_account -= amount
            p @checking_account
        end
    end
    # def savings_withdrawl(amount)
    #     @savings_account -= amount
    #     if @savings_account < 0
    #         puts "You're broke."
    #     self
    #     end
    # end
    def total_money
        total = @savings_account + @checking_account
        p total
    end
    # def total
    #     "Checking Balance: #{@checking}\nSaving Balance: #{@saving}\nTotal Balance: #{@checking + @saving}"
    # end
    def account_information
        "Account Number: #{@account_number}\nInterest Rate: #{@interest_rate}\n#{self.total}" 
    end
    def self.number_of_accounts
        puts @@count
    end
    private
        # def generate_account
        #     rng = Random.new
        #     @account_number = rng.rand(1000..10000)
        # end
    # private
        def create_account
            Array.new(10).map { rand(1..9) }.join
        end
end
