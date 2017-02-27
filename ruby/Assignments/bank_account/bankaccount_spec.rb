require_relative 'bank_account'
RSpec.describe BankAccount do
    describe 'methods' do
        before do
            @bank = BankAccount.new
        end

        it 'has method for retrieving the chk account balance' do
            expect(@bank.chk_balance).to eq("Checking Account balance: 10000")
        end
        it 'has method that retrieves total account balance' do
            expect(@bank.TotalBalance).to eq(32400)
        end
        it 'has a method that allows user to widthdraw cash' do
            savings = @bank.widthdraw(1000, "savings")
            checking = @bank.widthdraw(1000, "checking")

            expect(savings).to eq(19000)
            expect(checking).to eq(9000)
        end

        it 'Raises an error if user tries to widthdraw more money than they have in account' do
            savings = @bank.widthdraw(10000000, 'savings')
            checking = @bank.widthdraw(100000, 'checking')

            expect(savings).to eq("Not enough funds to widthdraw")
            expect(checking).to eq("Not enough funds to widthdraw")
        end

        it "raises an error when the user tries to print out how many bank accounts there are" do
            expect{@bank.account_counter}.to raise_error(NoMethodError)
        end
        it 'raises an error if a user tries to set interest rate' do
            expect{@bank.interest_rate(0.01).to raise_error(NoMethodError)}
        end
    end

    describe 'attributes' do
        before do
            @bank = BankAccount.new
        end
        it 'raises an error if a user tries to set any attribute' do
            expect{@bank.account_counter(20)}.to raise_error(NoMethodError)
            expect{@bank.account_number(7777)}.to raise_error(ArgumentError)
            expect{@bank.chk_balance(23942934)}.to raise_error(ArgumentError)
            expect{@bank.savings_balance(3242394)}.to raise_error(ArgumentError)
            expect{@bank.interest_rate(0.012)}.to raise_error(NoMethodError)
        end
    end
end
