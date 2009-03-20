module Nzb
  
  class Segment
    
    attr_accessor :msgid, :number, :bytes
    
    def initialize(attrs)
      @bytes  = attrs[1]
      @number = attrs[3]
    end
    
  end
  
end