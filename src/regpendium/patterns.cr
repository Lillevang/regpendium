module Regpendium

  class Patterns

    getter ip_v4 : Regex

    def initialize()
      @ip_v4 = setup_ipv4
    end

    def setup_ipv4() : Regex
      sub_pattern = "([01]?\\d{1,2}|2(5[0-5]|[0-4]\\d))"
      Regex.new("^#{sub_pattern}\\.#{sub_pattern}\\.#{sub_pattern}\\.#{sub_pattern}$")
    end
  end
end
