require 'practice'
require 'rspec'

  describe '#remove_dups' do
    a = Array.new([1,1,2,3])
    
    it 'removes duplicates' do
      expect(a.remove_dups).to eq([1,2,3])
    end
    
    it 'returns unique elements in order of appearance' do
      expect([7,2,4,12,7,2,8].remove_dups).to eq([7,2,4,12,7,2,8].uniq)
    end
    
    it 'does NOT call the built in Array#uniq method' do
      example_arr = ["example array"]
      expect(example_arr).not_to receive(:uniq)
      example_arr.remove_dups {}
    end
    
  end
  

    