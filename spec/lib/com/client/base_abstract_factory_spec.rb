# frozen_string_literal: true

::RSpec.describe ::Com::Client::BaseAbstractFactory do
  subject(:instance) { described_class.new }

  shared_examples "raising absract method error" do |abstract_method_name|
    it { expect { subject }.to raise_error(::Com::AbstractMethodError) }
    it { expect { subject }.to raise_error(include("Com::Client::BaseAbstractFactory")) }
    it { expect { subject }.to raise_error(include(abstract_method_name)) }
  end

  describe "#build_client" do
    subject { instance.build_client }

    it_behaves_like "raising absract method error", "build_client"
  end

  describe "#build_connector" do
    subject { instance.build_connector }

    it_behaves_like "raising absract method error", "build_connector"
  end

  describe "#build_request_factory" do
    subject { instance.build_request_factory }

    it_behaves_like "raising absract method error", "build_request_factory"
  end

  describe "#build_response_parser_factory" do
    subject { instance.build_response_parser_factory }

    it_behaves_like "raising absract method error", "build_response_parser_factory"
  end
end
