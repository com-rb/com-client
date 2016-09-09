# frozen_string_literal: true

::RSpec.describe ::Com::Client::StandardError do
  it { expect(described_class).to include(::Com::StandardError) }
end
