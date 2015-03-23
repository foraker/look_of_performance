require_relative '../../../lib/look_of_performance/output'
require 'ostruct'

module LookOfPerformance

  TestConfig = OpenStruct.new(
    scolding:  'slow',
    delimiter: ' ',
    limit:     100
  )

  describe Output do
    let(:duration) { 100 }
    let(:output)   { described_class.new(duration, TestConfig) }

    describe '#to_s' do
      let(:duration) { 200 }

      it 'is the output string joined by delimiter the right number of times' do
        expect(output.to_s).to eq 'slow slow'
      end
    end

    describe '#sendable?' do
      context 'when duration is less than limit' do
        let(:duration) { 50 }

        it 'is false' do
          expect(output).to_not be_sendable
        end
      end

      context 'when duration is equal to limit' do
        let(:duration) { 100 }

        it 'is false' do
          expect(output).to_not be_sendable
        end
      end

      context 'when duration is greater than limit' do
        let(:duration) { 150 }

        it 'is true' do
          expect(output).to be_sendable
        end
      end
    end
  end
end
