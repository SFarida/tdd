require './solver'

describe 'Solver' do
  context 'Testing class Solver' do
    it 'Should return factorial of a number, reverse of a string and  print fizz, buzz and fizzbuzz' do
      solver_mock = double('solver')
      solver_class = Solver.new
      allow(solver_mock).to receive(:factorial).with(3).and_return(6)
      allow(solver_mock).to receive(:reverse).with('hello').and_return('olleh')
      allow(solver_mock).to receive(:fizzbuzz).with(3).and_return('fizz')
      allow(solver_mock).to receive(:fizzbuzz).with(5).and_return('buzz')
      allow(solver_mock).to receive(:fizzbuzz).with(15).and_return('fizzbuzz')
      expect(solver_class.factorial(3)).to eq(6)
      expect { solver_class.factorial(-8) }.to raise_error('Negative number not accepted')
      expect(solver_class.factorial(0)).to eq(1)
      expect(solver_class.factorial(1)).to eq(1)
      expect(solver_class.reverse('hello')).to eq('olleh')
      expect(solver_class.fizzbuzz(3)).to eq('fizz')
      expect(solver_class.fizzbuzz(5)).to eq('buzz')
      expect(solver_class.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver_class.fizzbuzz(8)).to eq('8')
      expect(solver_class.fizzbuzz(-8)).to eq('-8')
    end
  end
end
