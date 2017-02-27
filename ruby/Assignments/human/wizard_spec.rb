require_relative 'wizard'
RSpec.describe Wizard do
    describe 'methods' do
        before do
            @wizard = Wizard.new
        end

        it 'Wizard has default health of 50 and intelligence of 25' do
            expect(@wizard.health).to eq(50)
            expect(@wizard.intelligence).to eq(25)
        end

        it 'Wizard has heal method that increases health by 10' do
            expect(@wizard.heal).to eq(60)
        end

        it 'Wizard has ancestor chain that includes Human' do
            expect(Wizard.ancestors).to include(Human)
        end

        it 'Wizard has fireball method that attacks an object and reduces obj health' do
            target = Human.new
            @wizard.attack(target)
            expect(target.health).to eq(90)
        end
    end
end
