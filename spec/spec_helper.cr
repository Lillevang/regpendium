require "spec"
require "../src/regpendium"

module Regpendium
  def create_ip_v4_data
    {
      "1.1.1.1"         => true,
      "255.255.255.255" => true,
      "192.168.1.1"     => true,
      "10.10.1.1"       => true,
      "132.254.111.10"  => true,
      "26.10.2.10"      => true,
      "127.0.0.1"       => true,
      "10.10.10"        => false,
      "10.10"           => false,
      "10"              => false,
      "a.a.a.a"         => false,
      "10.0.0.a"        => false,
      "10.10.10.256"    => false,
      "222.222.2.999"   => false,
      "999.10.10.20"    => false,
      "2222.22.22.22"   => false,
      "22.2222.22.2"    => false,
    }
  end
end
