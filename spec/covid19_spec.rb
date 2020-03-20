# frozen_string_literal: true

RSpec.describe Covid19 do
  it 'has a version number' do
    expect(Covid19::VERSION).not_to be nil
  end
end

RSpec.describe Covid19::Timeline do
  describe 'full' do
    it 'responds with json' do
      full_timeline = Covid19::Timeline.by_country(country: 'it')
      expect(full_timeline.is_a?(String)).to be(true)
    end
  end

  describe 'by_country' do
    subject { Covid19::Timeline.by_country(country: country) }

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

RSpec.describe Covid19::GlobalStatistics do
  describe 'global' do
    it 'responds with json' do
      global_stats = Covid19::GlobalStatistics.retrieve
      expect(global_stats.is_a?(String)).to be(true)
    end
  end

  describe 'by_country' do
    subject { Covid19::GlobalStatistics.by_country(country: country) }

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

RSpec.describe Covid19::News do
  describe 'news' do
    context 'when no source parameter is sent' do
      it 'responds with json with WHO source' do
        who_news = Covid19::News.retrieve
        expect(who_news.is_a?(String)).to be(true)
      end
    end

    context 'when source parameter is sent' do
      let(:feed) { 'https://tools.cdc.gov/api/v2/resources/media/403372.rss' }

      it 'responds with json with the provided source' do
        news = Covid19::News.retrieve(rss: feed)
        byebug
        expect(news.is_a?(String)).to be(true)
      end
    end
  end
end
