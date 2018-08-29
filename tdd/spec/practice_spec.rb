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
  
  describe '#stock_picker' do
    let(:stocks) {[2.34,1.50,6.00,5.30,10.07,5.45,7.11]}
    it 'returns nil if passed in empty array' do
      expect(stock_picker([])).to be_nil
    end
    
    it 'finds most profitable [buy,sell] days' do
      expect(stock_picker(stocks)).to eq([2,5])
    end
    
    it 'does NOT sell stock before you buy it' do
      expect(stock_picker([20.00,0.00,1.00,2.75,4.00])).to eq([2,5])
    end
    
    it 'raises error if no possiblity for profit' do
      expect(stock_picker([5.00,4.00,3.00,2.00,1.00])).to eq("No chance at profit!")
    end
  end
  
  describe 'stack' do
    let(:col) { Stack.new([1,2,3,4])}
    it 'initializes data with passed array' do
      expect(col.data).to eq([1,2,3,4])
    end
    
    it 'stack#data allows for shift' do
      expect(col.shift).to eq(1)
    end
    
    it 'stack#shift modifies data' do
      temp = col.shift
      expect(col.data).to eq([2,3,4])
    end
    
    it 'stack#add adds to the front' do
      col.add(3)
      expect(col.data).to eq([3,1,2,3,4])
    end
    
  end
  
  

    