require "./regpendium/*"

# TODO: Write documentation for `Regpendium`
module Regpendium
  extend self

  VERSION = "0.1.0"

  def ipv4
    Patterns.ip_v4
  end
end
