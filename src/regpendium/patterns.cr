module Regpendium
  class Patterns

    def initialize
    end

    def ipv4() : Regex
      IPV4
    end

    # TODO
    def zip_code(country_code : String) : Regex
      Regex.new(ZIP_CODE[country_code])
    end

    def credit_card() : Regex
      /\b(?:(?<visa>4[0-9]{12}(?:[0-9]{3})?)|(?<mastercard>5[1-5][0-9]{14})|(?<discover>6(?:011|5[0-9]{2})[0-9]{12})|(?<amex>3[47][0-9]{13})|(?<diners>3(?:0[0-5]|[68][0-9])[0-9]{11})|(?<jcb>(?:2131|1800|35[0-9]{3})[0-9]{11}))\b/
    end

    def email() : Regex
      /([A-Za-z0-9!#$%&'*+\/=?^_`{|.}~-]+@(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?)/
    end

    def hex_value() : Regex
      /\b#?([a-fA-F0-9]{6}|[a-fA-F0-9]{3})\b/
    end
  end
end
