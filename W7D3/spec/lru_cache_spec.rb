require 'lru_cache'

describe 'LRUCache' do

    describe '#initialize' do

        subject(:cache) { LRUCache.new(4) }

        it 'should initialize an LRUCache with an empty hash and set the max element number' do

            expect(cache.show).to eq([])

        end

    end

    # describe '#add' do

    #     subject(:cache) { LRUCache.new(4) }

    #     it 'should add anew '

    # end

end