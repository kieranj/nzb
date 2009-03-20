module Nzb
  
  class Segment
    
    attr_writer :msgid
    
    def initialize(attrs)
      @number = attrs[1]
      @bytes  = attrs[3]
    end
    
  end
  
end