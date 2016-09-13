# frozen_string_literal: true

require "com/client/version"


# Purpose: namespace
#
# Namespace for client modules and classes of "com-client" library.
module ::Com::Client
end


require "com/client/error"
require "com/client/standard_error"

require "com/client/request"
require "com/client/request_factory"
require "com/client/result"
require "com/client/response_parser"
