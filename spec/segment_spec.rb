require File.dirname(__FILE__) + '/spec_helper'

class Nzb
  
  describe Segment do
    
    before do
      attrs = {"msgid" => "123456789abcdef@news.newzbin.com", "bytes" => "102394", "number" => "1"}
      @segment = Segment.new(attrs)
    end
    
    it "should have the msg_id" do
      
    end
    
    it "should have the segment number" do
      
    end
    
    it "should have the message size" do
      
    end
    
  end
  
end