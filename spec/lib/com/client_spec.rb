# frozen_string_literal: true

::RSpec.describe ::Com::Client do
  it 'has a version number' do
    expect(::Com::Client::VERSION).not_to be nil
  end

  it "has a version number in string format" do
    expect(::Com::Client::VERSION).to be_instance_of(String)
  end
end
