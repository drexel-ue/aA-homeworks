require 'lru_cache'

describe 'LRUCache' do

    describe '#initialize' do

        subject(:cache) { LRUCache.new(4) }

        it 'should initialize an LRUCache with an empty array and set the max element number' do

            expect(cache.show).to eq([])

        end

    end

    describe '#add' do

        subject(:cache) { LRUCache.new(4) }
        let(:one) { [1, 2, 3, 4, 5] }
        let(:two) { 'nachooooooooo' }
        let(:three) { 30982 }
        let(:four) { {wimble:123, horsey:'🐴'} }
        let(:five) { 'five' }

        it 'should add a new element to the end of the cache' do

            cache.add(one)
            cache.add(two)
            cache.add(three)
            cache.add(four)
            cache.add(five)

            expect(cache.show).to eq([two, three, four, five])

        end

        # it should

    end

    describe "#count" do
        
        subject(:cache) { LRUCache.new(4) }
        let(:lru) { [1, 2, 3, 4, 5] }
        let(:mru) { 'nachooooooooo' }

        

    end
    

end