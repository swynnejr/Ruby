class BankAccount
    attr_accessor :account_number, :checking_account, :savings_account
    @@count = 0
    def initialize
        @checking_account = 500
        @savings_account = 500
        @@count += 2
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
        self
    end
    def savings_deposit(amount)
        @savings_account += amount
        self
    end
    def checking_withdrawl(amount)
        @checking_account -= amount
        if @checking_account < 0
            puts "You're broke."
        self
    end
    def savings_withdrawl(amount)
        @savings_account -= amount
        if @savings_account < 0
            puts "You're broke."
        self
    end
    def total_money
        total = @savings_account + @checking_account
        puts total
    private
        def generate_account
            rng = Random.new
            @account_number = rng.rand(1000..10000)
            puts @account_number
            self
        end
end

account1 = BankAccount.new
account1.savings_deposit(50)
account1.savings_balance
