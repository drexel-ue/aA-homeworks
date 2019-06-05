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
        let(:lru) { [1, 2, 3, 4, 5] }
        let(:mru) { 'nachooooooooo' }

        it 'should add a new element to the end of the cache' do

            cache.add(lru)
            cache.add(mru)
            expect(cache.show).to eq([[1, 2, 3, 4, 5], 'nachooooooooo'])

        end

    end

end