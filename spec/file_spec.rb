require File.dirname(__FILE__) + '/spec_helper'

module Nzb
  
  describe File do
    
    before do
      attrs = ["poster", "Joe Bloggs >bloggs@nowhere.example<", "date", "1071674882", "subject", "Here's your file!  abc-mr2a.r01 (1/2)"]
      @file = File.new(attrs)
    end
    
    context "New File" do
    
      it "should have a subject" do
        @file.subject.should == "Here's your file!  abc-mr2a.r01 (1/2)"
      end
    
      it "should have a date" do
        @file.date.should == "1071674882"
      end
    
      it "should have a poster" do
        @file.poster.should == "Joe Bloggs >bloggs@nowhere.example<"
      end
    
      it "should have no groups" do
        @file.groups.length.should == 0
      end
      
      it "should have no segments" do
        @file.groups.length.should == 0
      end
      
    end
    
  end
  
end