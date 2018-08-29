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
  
  describe '#two_sum' do
    it 'finds pairs of numbers' do
      expect([-1,0,2,-2,1].two_sum).to eq([[0,4], [2, 3]])
    end
  end
  
  describe '#my_transpose' do
    it 'converts between row and col orientation' do
      expect(my_transpose([[0,1,2],[3,4,5],[6,7,8]])).to eq([[0,3,6],[1,4,7],[2,5,8]])
    end
    
    it 'raises error unless passed in square matrix' do
      expect {my_transpose([[1,2,3]]) }.to raise_error(ArgumentError)
    end
    
    it 'returns nil if passed in empty array' do
      expect(my_transpose([[]])).to be_nil
    end
    
  end
  

    