# frozen_string_literal: true

# @abstract
class ::Com::Client::BaseClient
  # @!attribute connector
  #   @return [void] instance to send request through network
  # @!attribute request_factory
  #   Request factory instance which creates preconfigured request instances to
  #   send them to the endpoint.
  #
  #   @return [::Com::Client::RequestFactory::BaseRequestFactory] request
  #     factory instance
  # @!attribute response_parser_factory
  #   @return [::Com::Client::ResponseParser::BaseResponseParserFactory] response
  #     parser factory instance
  attr_accessor \
    :connector,
    :request_factory,
    :response_parser_factory


  # @return [void]
  def initialize
    # GOTCHA: initialization prevent ruby warnings
    @connector               = nil
    @request_factory         = nil
    @response_parser_factory = nil
  end

  # Process given request.
  #
  # @param request [::Com::Client::Request::BaseRequest]
  #
  # @return [::Com::Client::Result::BaseResult]
  #
  # @raise [::Com::AbstractMethodError] when concrete client has not overridden
  #   this method to provide specific implementation
  def call(request)
    raise ::Com::AbstractMethodError.method_not_overridden_error(self.class, __method__)
  end
end
