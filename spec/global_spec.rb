# frozen_string_literal: true

RSpec.describe Statistics::Global do
  describe 'global' do
    it 'responds with json' do
      global_stats = Statistics::Global.retrieve
      expect(global_stats.is_a?(String)).to be(true)
    end
  end
end
