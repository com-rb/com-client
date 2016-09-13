# frozen_string_literal: true

require "com/client/version"


# Purpose: namespace
#
# Namespace for client modules and classes of "com-client" library.
module ::Com::Client
  module_function

  # @return [::Com::Client::BaseAbstractFactory]
  def build_abstract_factory
    ::Com::Client::BaseAbstractFactory.new
  end
end


require "com/client/error"
require "com/client/standard_error"

require "com/client/request"
require "com/client/request_factory"
require "com/client/result"
require "com/client/response_parser"

require "com/client/base_client"
require "com/client/base_abstract_factory"
