require './test_setup'
require './methods'

describe 'Methods' do

  describe 'sleep_in' do

    it 'should sleep in on the weekend at home' do
      sleep_in?(false, false).must_equal(true)
    end

    it 'should not sleep in during the week at home' do
      sleep_in?(true, false).must_equal(false)
    end

    it 'should sleep in on vacation on the weekend' do
      sleep_in?(false, true).must_equal(true)
    end

    it 'should sleep on vacation during the week' do
      sleep_in?(true, true).must_equal(true)
    end

  end
  
  describe 'monkey_trouble' do

    it 'is trouble when both monkeys are smiling' do
      monkey_trouble?(false, false).must_equal(true)
    end

    it 'is not trouble when only A is smiling' do
      monkey_trouble?(true, false).must_equal(false)
    end

    it 'is not trouble when only B is smiling' do
      monkey_trouble?(false, true).must_equal(false)
    end

    it 'is trouble when neither monkey is smiling' do
      monkey_trouble?(false, false).must_equal(true)
    end

  end

  describe 'sum_double' do
    
    it 'finds the sum' do
      sum_double(1, 2).must_equal(3)
    end

    it 'doubles the sum when the numbers are the same' do
      sum_double(3, 3).must_equal(12)
    end

  end

  describe 'blackjack' do

    it 'returns the value closest to 21' do
      blackjack(19, 16).must_equal(19)
    end

    it 'returns zero if both are over 21' do
      blackjack(22, 29).must_equal(0)
    end

  end

  describe 'n_twice' do

    it 'returns the first and last n characters of the string' do
      n_twice([1, 2, 3, 4, 5, 6], 2).must_equal([1, 2, 5, 6])
    end

    it 'returns the first and last n characters of the string with n length string' do
      n_twice([1, 2, 3], 3).must_equal([1, 2, 3, 1, 2, 3])
    end

  end

  describe 'close_far' do

    it 'if b and c are far from a and close to each other' do
      close_far(5, 3, 2).must_equal(true)
    end

    it 'if b and c are not close' do
      close_far(5, 4, 9).must_equal(false)
    end

    it 'if b and c are close to each other and a' do
      close_far(2, 3, 4).must_equal(false)
    end    


  end



end