class BankAccount
    attr_accessor :account_number, :chk_balance, :savings_balance
    @account_counter = 0
    class << self
        attr_accessor :account_counter
    end
    def initialize
        createAccountNumber
        @savings_balance = 20000
        @chk_balance = 10000
        @interest_rate = 0.08
        self.class.account_counter += 1
    end

    def displayAccountNumber
        "Account Number: #{@account_number}"
    end

    def chk_balance
        "Checking Account balance: #{@chk_balance}"
    end

    def savings_balance
        "Savings Account balance is: #{@savings_balance}"
    end
    def deposit(amount, account)
        if account == "savings"
            "Deposit to Savings"
            @savings_balance += amount
        else
            "Deposit to Checking"
            @chk_balance += amount
        end
    end

    def widthdraw(amount, account)
        if account == "savings"
            if amount < @savings_balance
                @savings_balance -= amount
            else
                "Not enough funds to widthdraw"
            end
        else
            if amount < @chk_balance
                @chk_balance -= amount
            else
                "Not enough funds to widthdraw"
            end
        end
    end

    def TotalBalance
        "Checking Account balance: #{@chk_balance + (@chk_balance * @interest_rate)}"
        "Savings Account balance: #{@savings_balance + (@savings_balance * @interest_rate)}"
        (@chk_balance + @savings_balance) + (@chk_balance + @savings_balance)*@interest_rate
    end
    def account_info
        "Account number is: #{@account_number}"
        "Total balance is: #{(@chk_balance + @savings_balance) + ((@chk_balance+@savings_balance)) * @interest_rate}"
		"Your Checking Account balance is: #{@chk_balance + (@chk_balance * @interest_rate)}"
		"Your Savings Account balance is: #{@savings_balance + (@savings_balance * @interest_rate)}"
		"The interest rate is: #{@interest_rate}"
    end

    def count_accounts
        "There are a total of #{self.class.account_counter} accounts"
    end

    private
    attr_accessor :interest_rate

    def createAccountNumber
        @account_number = Integer(rand.to_s[2..9])
    end
end

# user1 = BankAccount.new
# user1.widthdraw(10000000,)
# puts user1.TotalBalance
# user1.deposit(8000,"checking")
# user1.deposit(10000, "savings")
# user1.account_info
# user1.chk_balance
#
# user2 = BankAccount.new
# user2.displayAccountNumber
# user2.count_accounts
