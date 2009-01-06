class Nzb
  
  class Parser
  
    def initialize(file)
      @parser           = LibXML::XML::SaxParser.new
      @parser.file      = file
      @parser.callbacks = Callbacks.new
    end
    
    def parse
      @parser.parse
      @parser.callbacks.files
    end

    class Callbacks
      include LibXML::XML::SaxParser::Callbacks
    
      attr_reader :files
    
      def initialize
        @files = []
      end
      
      def on_start_element(name, attrs)
        case name
        when "file"
          @files << File.new(attrs)
        when "segment"
          @segment = @files.last.add_segment(attrs)
        when "group"
          @group = true
        end
      end
          
      def on_characters(text)
        if @segment
          @segment.msgid = text.strip
          @segment = nil
        elsif @group
          @files.last.add_group(text.strip)
          @group = nil
        end
      end
    
    end

  end
  
end