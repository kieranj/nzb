require File.dirname(__FILE__) + '/spec_helper'

module Nzb
  
  describe Segment do
    
    before do
      attrs = ["bytes", "102394", "number", "1"]
      @segment = Segment.new(attrs)
    end
    
    it "should have the segment number" do
      @segment.number.should == "1"
    end
    
    it "should have the message size" do
      @segment.bytes.should == "102394"
    end
    
    it "should be able to assign the msg_id" do
      @segment.msgid.should be_nil
      @segment.msgid = "123456789abcdef@news.newzbin.com"
      @segment.msgid.should_not be_nil
    end
    
  end
  
end