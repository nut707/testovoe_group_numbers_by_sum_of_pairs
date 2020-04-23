require_relative '../array.rb'

describe Array do
  describe '.group_numbers_by_sum_of_pairs' do
    context 'returns correct array' do

      it '[22, 3, 5, 0, 2, 2]' do
        a = [22, 3, 5, 0, 2, 2]
        b = a.group_numbers_by_sum_of_pairs(5)
        expect(b).to eq([[3, 2], [5, 0]])
      end

      it '[-5, 33, 2, 2, 3, 5, 0, 10, 3]' do
        a = [-5, 33, 2, 2, 3, 5, 0, 10, 3]
        b = a.group_numbers_by_sum_of_pairs(5)
        expect(b).to eq([[-5, 10], [2, 3], [2, 3], [5, 0]])
      end

      it '[5, 5, 5, 0, 0, 0, 5]' do
        a = [5, 5, 5, 0, 0, 0, 5]
        b = a.group_numbers_by_sum_of_pairs(5)
        expect(b).to eq([[5, 0], [5, 0], [5, 0]])
      end

      it '[3, 3, 6, 0]' do
        a = [3, 3, 6, 0]
        b = a.group_numbers_by_sum_of_pairs(6)
        expect(b).to eq([[3, 3], [6, 0]])
      end

    end
  end
end