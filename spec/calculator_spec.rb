require 'calculator'

describe Calculator do
  let(:calc) { Calculator.new }

  describe '#add' do
    it 'adds two numbers together' do
      expect(calc.add(1, 2)).to eq(3)
    end
  end

  describe '#subtract' do
    it 'subtracts two numbers, negative result ok' do
      expect(calc.subtract(1, 2)).to eq(-1)
    end
  end

  describe '#multiply' do
    it 'multiplies two numbers together' do
      expect(calc.multiply(3, 3)).to eq(9)
    end
  end

  describe '#divide' do
    it 'divides the first number by the second' do
      expect(calc.divide(10, 2)).to eq(5)
    end
  end

  describe '#pow' do
    it 'raises the first number to the power of the second' do
      expect(calc.pow(3, 3)).to eq(27)
    end
    it 'can handle floats & operations passed as arguments' do
      expect(calc.pow(27, 1 / 3.0)).to eq(3.0)
    end
  end

  describe '#sqrt' do
    it 'returns the square root of a number' do
      expect(calc.sqrt(9)).to eq(3)
    end
    it 'returns a float if not evenly squareable' do
      expect(calc.sqrt(8)).to eq(2.83)
    end
  end

  describe '#memory' do
    it 'is nil when no argument is given' do
      expect(calc.memory).to eq(nil)
    end
    it 'is equal to whatever number is passed' do
      expect(calc.memory=(8)).to eq(8)
    end
    it 'is equal to whatever number was passed last when accessed' do
      calc.memory=(8)
      expect(calc.memory).to eq(8)
    end
  end

  describe '#initialize' do
    let(:scalc) { Calculator.new(true) }
    it '@stringify is true when passed as an argument' do
      expect(scalc.add(1, 2)).to eq("3")
    end
  end
end
