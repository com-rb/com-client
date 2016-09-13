# frozen_string_literal: true

::RSpec.describe ::Com::Client::RequestFactory::BaseRequestFactory do
  let(:request_class) { Class.new }

  subject(:instance) do
    factory = described_class.new

    factory.default_request_class = request_class

    factory
  end

  describe "#build_request" do
    subject { instance.build_request }

    it { expect(subject).to be_instance_of(request_class) }
    it { expect(subject).not_to eq(instance.build_request) }
  end
end
