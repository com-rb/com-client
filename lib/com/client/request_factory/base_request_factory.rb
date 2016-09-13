# frozen_string_literal: true

# @abstract
class ::Com::Client::RequestFactory::BaseRequestFactory
  # @!attribute default_request_class
  #   Class of requests which will be instantiated with factory methods by default
  #
  #   @return [Class]
  attr_accessor :default_request_class


  # @return [::Com::Client::Request::BaseRequest]
  def build_request
    @default_request_class.new
  end
end
