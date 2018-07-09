require 'rspec'
require_relative '../max_prod'

context "sorting method" do
  describe 'given an array of size 3' do
    it 'should return 6' do
      expect(sort_method([1, 2, 3])).to eq(6)
    end
  end
  
  describe 'given an array of all positive ints' do
    it 'should return 6' do
      expect(sort_method([1, 2, 3, 0])).to eq(6)
    end
  end 

  describe 'given a large array' do
    it 'should return 120' do
      expect(sort_method([-4, -3, 1, 3, 3, -2, 10, 0, 2, 1, 2, 1])).to eq(120)
    end

    it 'should return 120 scrambled' do
      expect(sort_method([-3, -4, 3, 1, 3, 2, 1, 0, -2, 1, 0, 10])).to eq(120)
    end
  end

  describe 'given an array of size 2' do
    it 'should return nil' do
      expect(sort_method([1, 2])).to eq(nil)
    end
  end
  
  describe 'given an array of negative ints' do
    it 'should return -1' do
      expect(sort_method([-1, -1, -1])).to eq(-1)
    end
  end
end

context 'iterative method' do
  describe 'given an array of size 3' do
    it 'should return 6' do
      expect(iterative_method([1, 2, 3])).to eq(6)
    end
  end
  
  describe 'given an array of all positive ints' do
    it 'should return 6' do
      expect(iterative_method([1, 2, 3, 0])).to eq(6)
    end
  end 

  describe 'given a large array' do
    it 'should return 120' do
      expect(iterative_method([-4, -3, 1, 3, 3, -2, 10, 0, 2, 1, 2, 1])).to eq(120)
    end

    it 'should return 120 scrambled' do
      expect(iterative_method([-3, -4, 3, 1, 3, 2, 1, 0, -2, 1, 0, 10])).to eq(120)
    end
  end

  describe 'given an array of size 2' do
    it 'should return nil' do
      expect(iterative_method([1, 2])).to eq(nil)
    end
  end
  
  describe 'given an array of negative ints' do
    it 'should return -1' do
      expect(iterative_method([-1, -1, -1])).to eq(-1)
    end
  end
end
