# frozen_string_literal: true

# GOTCHA: this file is an exclusion from rule of plain module definition, because
#   it is used in com-client.gemspec file where all root namespaces
#   do not loaded. So, they have to be defined hierarchically.
#
# Purpose: namespace
#
# @see ::Com::Client
module ::Com
  module Client
    # Library version.
    #
    # @return [String] library version
    VERSION = "0.2.0".freeze
  end
end
