class Nzb
  
  class File
    
    attr_accessor :segments, :groups, :subject
  
    def initialize(attrs)
      @segments = []
      @groups   = []
      @subject  = attrs["subject"]
      @filename = ""
      @poster   = attrs["poster"]
      @date     = attrs["date"]
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