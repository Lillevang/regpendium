require "../spec_helper"

module Regpendium
  describe Patterns do
    it "Creates" do
      patterns = Patterns.new
      patterns.should_not be nil
    end

    it "contains an ip_v4 pattern" do
      patterns = Patterns.new
      patterns.ipv4.should_not be nil
      patterns.ipv4.should eq /\b(?:(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])(\.(?!$)|$)){4}\b/
    end

    it "matches ip_v4 addresses as expected" do
      patterns = Patterns.new
      ip_v4_test_data = create_ip_v4_test_data()
      ip_v4_test_data.each do |ip, exists|
        patterns.ipv4.matches?(ip).should eq exists
      end
    end

    it "ipv4 works from the regpendium classpath" do
      Regpendium.ipv4.should_not be nil
      Regpendium.ipv4.should eq /\b(?:(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])(\.(?!$)|$)){4}\b/
      ip_v4_test_data = create_ip_v4_test_data()
      ip_v4_test_data.each do |ip, exists|
        Regpendium.ipv4.matches?(ip).should eq exists
      end
    end

    it "has a regex for credit cards" do
      patterns = Patterns.new
      patterns.credit_card.should_not be nil
      patterns.credit_card.is_a?(Regex)
    end

    it "correctly identifies credit cards" do
      patterns = Patterns.new
      credit_card_test_data = create_test_credit_card_numbers()
      credit_card_test_data.each do |name, data|
        data.each do |number|
          captures = patterns.credit_card.match(number).named_captures()
          captures[name].should_not be nil
        end
      end
    end
  end
end
