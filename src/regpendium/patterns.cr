module Regpendium
  class Patterns

    def initialize
    end

    def ipv4 : Regex
      IPV4
    end

    # TODO
    def zip_code(country_code : String) : Regex
      Regex.new(ZIP_CODE[country_code])
    end


    # Returns a tuple with two patterns to match credit card numbers.
    # This will accept patterns like:
    # Index 0 will accept patterns like: XXXXXXXXXXXXXXXX, XXXX-XXXX XXXX-XXXX, XXXX XXXX-XXXX XXXX,
    # Index 1 will accept patterns like: XXXXXXXXXXXX, XXXX XXXX XXXX XXXX, or XXXX-XXXX-XXXX-XXXX (stricter)
    def credit_card() : Tuple(Regex, Regex)
      {/\b(\d{4}[-\s]?){3}\d{4}\b/, /\b((\d{4}){3}|(\d{4}-){3}|(\d{4}\s){3})\d{4}\b/}
    end

    def email():
      /([A-Za-z0-9!#$%&'*+\/=?^_`{|.}~-]+@(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?)/
    end

    def hex_value():
      /\b#?([a-fA-F0-9]{6}|[a-fA-F0-9]{3})\b/
    end
  end
end
