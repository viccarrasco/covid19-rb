# frozen_string_literal: true

RSpec.describe Statistics::Global do
  describe 'global' do
    it 'responds with json' do
      global_stats = Statistics::Global.retrieve
      expect(global_stats.is_a?(String)).to be(true)
    end
  end

  describe 'by_country' do
    subject { Statistics::Global.by_country(country: country) }

    context 'when country is set' do
      let(:country) { 'mx' }
      it 'returns json' do
        expect(subject.is_a?(String)).to be(true)
      end
    end

    context 'when no country is set' do
      let(:country) { nil }
      it 'returns json' do
        expect(subject.is_a?(String)).to be(true)
      end
    end
  end
end
