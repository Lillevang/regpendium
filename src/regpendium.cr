require "./regpendium"

# TODO: Write documentation for `Regpendium`
module Regpendium
  VERSION = "0.1.0"

  def ipv4(country : String)
    Patterns.ip_v4
  end

end
