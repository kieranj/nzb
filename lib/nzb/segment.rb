class Nzb
  
  class Segment
    
    attr_writer :msgid
    
    def initialize(attrs)
      @number = attrs["number"]
      @bytes  = attrs["bytes"]
    end
    
  end
  
end