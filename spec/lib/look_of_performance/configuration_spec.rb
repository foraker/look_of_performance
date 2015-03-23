require_relative '../../../lib/look_of_performance/configuration'

module LookOfPerformance
  describe Configuration do
    it 'responds to output' do
      expect(subject).to respond_to :output
    end

    it 'responds to delimiter' do
      expect(subject).to respond_to :delimiter
    end

    it 'responds to limit' do
      expect(subject).to respond_to :limit
    end
  end
end
