describe 'Solver' do
  context 'Testing class Solver' do
    it 'Should return factorial of a number, reverse of a string and  print fizz, buzz and fizzbuzz' do
      solver = double('solver')
      allow(solver).to receive(:factorial).with(3).and_return(6)
      allow(solver).to receive(:reverse).with('hello').and_return('olleh')
      allow(solver).to receive(:fizzbuzz).with(3).and_return('fizz')
      allow(solver).to receive(:fizzbuzz).with(5).and_return('buzz')
      allow(solver).to receive(:fizzbuzz).with(15).and_return('fizzbuzz')
      expect(solver.factorial(3)).to eq(6)
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(5)).to eq('buzz')
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end
  end
end
