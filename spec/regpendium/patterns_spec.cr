require "../spec_helper"

module Regpendium
  describe Patterns do
    it "Creates" do
      patterns = Patterns.new
      patterns.should_not be_nil
    end

    it "contains an ip_v4 pattern" do
      patterns = Patterns.new
      patterns.ipv4.should_not be_nil
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
      patterns.credit_card.should_not be_nil
      patterns.credit_card.is_a?(Regex)
    end

    it "correctly identifies credit cards" do
      patterns = Patterns.new
      credit_card_test_data = create_test_credit_card_numbers()
      credit_card_test_data.each do |name, data|
        data.each do |number|
          match = patterns.credit_card.match(number)
          if !match.nil?
            captures = match.named_captures
            if !captures.nil?
              captures[name].should_not be_nil
            end
          else
            raise "TEST FAILED"
          end
        end
      end
    end

    it "has regex for emails" do
      patterns = Patterns.new
      patterns.email.should_not be nil
      patterns.email.should be_a(Regex)
    end

    it "correctly identifies emails" do
      patterns = Patterns.new
      valids = get_test_emails["valid"]
      invalids = get_test_emails["invalid"]

      valids.each do |email|
        patterns.email.matches?(email).should be_true
      end

      invalids.each do |email|
        patterns.email.matches?(email).should be_false
      end
    end

    it "email can be made case insensitive" do
      patterns = Patterns.new
      case_sensitive = get_test_emails["case_sensitive"]
      case_sensitive.each do |email|
        patterns.email.matches?(email).should be_false
        patterns.email(case_sensitive = false).match(email).should_not be_nil
        patterns.email(case_sensitive = false).matches?(email).should be_true
        patterns.email.matches?(email).should be_false
      end
    end

    it "has a pattern for mac addresses" do
      patterns = Patterns.new
      mac = patterns.mac_address
      mac.should_not be_nil
      mac.matches?("00:08:C7:1B:8C:02").should be_true
    end
  end
end
