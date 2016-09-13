# frozen_string_literal: true

::RSpec.describe ::Com::Client::BaseClient do
  subject(:instance) { described_class.new }

  describe "#call" do
    let(:request) { Object.new }

    subject { instance.call(request) }

    it { expect { subject }.to raise_error(::Com::AbstractMethodError) }
    it { expect { subject }.to raise_error(include("Com::Client::BaseClient")) }
    it { expect { subject }.to raise_error(include("call")) }
  end
end
