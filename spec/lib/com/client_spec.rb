# frozen_string_literal: true

::RSpec.describe ::Com::Client do
  it 'has a version number' do
    expect(::Com::Client::VERSION).not_to be nil
  end

  it "has a version number in string format" do
    expect(::Com::Client::VERSION).to be_instance_of(String)
  end

  describe "#build_abstract_factory" do
    subject { described_class.build_abstract_factory }

    it { expect(subject).to be_instance_of(::Com::Client::BaseAbstractFactory) }
    it { expect(subject).not_to eq(described_class.build_abstract_factory) }

    it { expect(subject).to respond_to(:build_client) }
    it { expect(subject).to respond_to(:build_connector) }
    it { expect(subject).to respond_to(:build_request_factory) }
    it { expect(subject).to respond_to(:build_response_parser_factory) }
  end
end
