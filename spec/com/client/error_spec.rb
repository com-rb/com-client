# frozen_string_literal: true

::RSpec.describe ::Com::Client::Error do
  it { expect(described_class).to include(::Com::Error) }
end
