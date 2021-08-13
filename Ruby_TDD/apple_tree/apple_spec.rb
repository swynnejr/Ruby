require_relative 'apple_tree'
RSpec.describe AppleTree do
    before(:each) do
        @tree = AppleTree.new
    end
    it "has a getter but no setter for height attribute" do
        @tree.height = 1000
        expect{ @tree.height }.to raise_error(NoMethodError)
    end
    it "has a getter but no setter for apple count attribute" do
        @tree.apple_count = 1000
        expect{ @tree.apple_count }.to raise_error(NoMethodError)
    end
    it "has it's apples picked and drops to zero apples" do
        @tree.pick_apples
        expect(@tree.apple_count).to eq(0)
    end
    context "tree is three years old" do
        # 2.times(@tree.year_gone_by)
        @tree.age = 3
        it "doesn't grow apples until it is 3" do
            expect(@tree.apple_count).to eq(0)
        end
        it "height increases by 10% each year" do
            expect(@tree.height).to be > 6.6
        end
    end
    context "tree is 5 years old" do
        @tree.age = 5
        it "grows 2 apples a year after 3 years of age" do
            expect(@tree.apple_count).to be <= 4
        end
        it "height increases by 10% each year" do
            expect(@tree.height).to be > 8
        end
    end

    context "tree is twelve years old" do
        @tree.age = 12
        it "only grows apples from 3 until 10 years old" do
            expect(@tree.apple_count).to be <= 14
        end
        it "height increases by 10% each year" do
            expect(@tree.height).to be > 15.5
        end
    end
end