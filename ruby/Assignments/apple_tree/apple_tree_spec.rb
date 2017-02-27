require_relative 'apple_tree'
RSpec.describe AppleTree do
  describe 'tests' do
    before do
      @tree = AppleTree.new
    end
    it 'Apple Tree should have a height and age' do
      expect(@tree.height).to eq(0)
      expect(@tree.age).to eq(0)
    end
    it 'Apple Tree should have a count of how many apples is on it' do
      @tree.apples.push("Fuji")
      expect(@tree.count_apples).to eq(1)
    end

    it 'Apple Tree should have method called year_gone_by, which ages tree by one year affecting its height' do
      @tree.year_gone_by
      expect(@tree.height).to eq(2)
      expect(@tree.age).to eq(1)
    end

    it 'should not grow apples before 3 y/o' do
      2.times do (@tree.year_gone_by) end
      @tree.grow_apples
      expect(@tree.count_apples).to eq(0)
    end

    it 'should grow apples' do
      3.times do (@tree.year_gone_by) end
      @tree.grow_apples
      expect(@tree.count_apples).to eq(1)
    end

    it 'should not grow apples after 10 years' do
      11.times do (@tree.year_gone_by) end
      @tree.grow_apples
      expect(@tree.count_apples).to eq(0)
    end

    it 'should have all its apples picked' do
      10.times do (@tree.year_gone_by) end
      10.times do (@tree.grow_apples) end
      @tree.count_apples
      @tree.pick_apples
      expect(@tree.count_apples).to eq(0)
    end




  end
end
