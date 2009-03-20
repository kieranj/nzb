module Nzb
  
  class File
    
    attr_accessor :segments, :groups, :subject, :poster, :date
  
    def initialize(attrs)
      @segments = []
      @groups   = []
      @poster   = attrs[1]
      @date     = attrs[3]
      @subject  = attrs[5]
    end
    
    def add_segment(attrs)
      @segment = Segment.new(attrs)
      @segments << @segment
      @segment
    end
    
    def add_group(name)
      @groups << name
    end
    
  end
  
end