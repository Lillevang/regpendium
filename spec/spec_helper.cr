require "spec"
require "../src/regpendium"

module Regpendium
  def create_ip_v4_test_data
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

  def create_test_credit_card_numbers
    {
      "visa"       => ["4556799928793493", "4024007191564557", "4539898507030517", "4024007182760636", "4929524291926797"],
      "mastercard" => ["5223013690249852", "5182036068193039", "5106506789136676", "5337132829298771", "5442866129386644"],
      "discover"   => ["6011493155765705", "6011429103639006", "6011407159154641", "6011135899361420", "6011659101291604"],
      "amex"       => ["373673462758858", "379209857678031", "346438362421781", "372947362455117", "348624707527303"],
      "diners"     => ["30162867734404", "30137007955721", "30220023333766", "30245392404450", "30313251548922"],
      "jcb"        => ["3558772629501113", "213153498047500", "3558158836042945", "3588957187743935", "3528925879176811"],
    }
  end

  def get_test_emails
    {
      "valid"          => ["not.uncommon.email@example.com", "usernam+tag+token@example.com", "other.domain@example.net", "working@example.dk"],
      "invalid"        => ["nope.example.com", "strange.punctuation@example..com"],
      "case_sensitive" => ["Very@Common.COM"],
    }
  end
end
