require_relative '../../../lib/look_of_performance/configuration'

module LookOfPerformance
  describe Configuration do
    describe 'output' do
      it 'can be set and retrieved' do
        subject.output = 'bananas'
        expect(subject.output).to eq 'bananas'
      end
    end

    describe 'delimiter' do
      it 'can be set and retrieved' do
        subject.delimiter = '|'
        expect(subject.delimiter).to eq '|'
      end
    end

    describe 'limit' do
      it 'can be set and retrieved' do
        subject.limit = 1000
        expect(subject.limit).to eq 1000
      end
    end
  end
end
