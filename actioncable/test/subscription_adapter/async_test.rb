require "test_helper"
require_relative "common"

class AsyncAdapterTest < ActionCable::TestCase
  include CommonSubscriptionAdapterTest

  def setup
    super

    @tx_adapter.shutdown
    @tx_adapter = @rx_adapter
  end

  def cable_config
    { adapter: "async" }
  end
end
