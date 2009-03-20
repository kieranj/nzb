module Nzb
  
  class Parser
  
    def initialize(file)
      @parser = Nokogiri::XML::SAX::Parser.new(Doc.new)
      @file   = file
    end
    
    def parse
      @parser.parse_file(@file)
      @parser.document.fileset
    end

    class Doc < Nokogiri::XML::SAX::Document
    
      attr_reader :fileset
    
      def initialize
        @fileset = Fileset.new
      end
      
      def start_element(name, attrs)
        case name
        when "file"
          @fileset.add_file(File.new(attrs))
        when "segment"
          @segment = @fileset.files.last.add_segment(attrs)
        when "group"
          @group = true
        end
      end
          
      def characters(text)
        if @segment
          @segment.msgid = text.strip
          @segment = nil
        elsif @group
          @fileset.files.last.add_group(text.strip)
          @group = nil
        end
      end
    
    end

  end
  
end