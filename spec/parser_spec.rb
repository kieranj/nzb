require File.dirname(__FILE__) + '/spec_helper'

class Nzb
  
  describe Parser do
    
    before do
      @parser = Parser.new(File.dirname(__FILE__) + "/fixtures/sample.nzb")
    end
    
    it "should return a fileset instance" do
      fileset = @parser.parse
      fileset.should be_instance_of(Fileset)
    end
    
  end
  
end