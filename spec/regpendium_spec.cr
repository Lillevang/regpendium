require "./spec_helper"
require "../src/*"

describe Regpendium::Patterns do
  it "Creates" do
    patterns = Regpendium::Patterns.new
    patterns.should_not be nil
  end

  it "contains an ip_v4 pattern" do
    patterns = Regpendium::Patterns.new
    patterns.ip_v4.should_not be nil
    patterns.ip_v4.should eq /^([01]?\d{1,2}|2(5[0-5]|[0-4]\d))\.([01]?\d{1,2}|2(5[0-5]|[0-4]\d))\.([01]?\d{1,2}|2(5[0-5]|[0-4]\d))\.([01]?\d{1,2}|2(5[0-5]|[0-4]\d))$/
  end

  it "matches ip_v4 addresses as expected" do
    patterns = Regpendium::Patterns.new
    ip_v4_data = create_ip_v4_data()
    ip_v4_data.each do |ip, exists|
      patterns.ip_v4.matches?(ip).should eq exists
    end
  end
end
