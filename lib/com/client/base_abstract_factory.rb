# frozen_string_literal: true

# @abstract
class ::Com::Client::BaseAbstractFactory
  # @return [::Com::Client::BaseClient]
  #
  # @raise [::Com::AbstractMethodError] when concrete abstract factory has not
  #   overridden this method to provide specific implementation
  def build_client
    raise ::Com::AbstractMethodError.method_not_overridden_error(self.class, __method__)
  end

  # @return [void]
  #
  # @raise [::Com::AbstractMethodError] when concrete abstract factory has not
  #   overridden this method to provide specific implementation
  def build_connector
    raise ::Com::AbstractMethodError.method_not_overridden_error(self.class, __method__)
  end

  # @return [::Com::Client::RequestFactory::BaseRequestFactory]
  #
  # @raise [::Com::AbstractMethodError] when concrete abstract factory has not
  #   overridden this method to provide specific implementation
  def build_request_factory
    raise ::Com::AbstractMethodError.method_not_overridden_error(self.class, __method__)
  end

  # @return [::Com::Client::ResponseParser::BaseResponseParser]
  #
  # @raise [::Com::AbstractMethodError] when concrete abstract factory has not
  #   overridden this method to provide specific implementation
  def build_response_parser_factory
    raise ::Com::AbstractMethodError.method_not_overridden_error(self.class, __method__)
  end
end
