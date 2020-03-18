# frozen_string_literal: true

RSpec.describe Timelines::FullTimeline do
  describe 'full' do
    it 'responds with json' do
      full_timeline = Timelines::FullTimeline.retrieve
      expect(full_timeline.is_a?(String)).to be(true)
    end
  end

  describe 'by_country' do
    subject { Timelines::FullTimeline.by_country(country: country) }

    context 'when country is set' do
      let(:country) { 'de' }
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
