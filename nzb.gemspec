Gem::Specification.new do |s|
  s.name = 'nzb'
  s.version = '0.0.1'
  s.summary = 'Nzb File Parser'
  s.email    = "kieran[AT]invisiblelines.com"
  s.homepage = "http://github.com/kieranj/nzb"
  # s.rubyforge_project = "nzb"
  s.description = "Library for parsing NZB files."
  s.has_rdoc = true
  s.authors = [ 'Kieran Johnson' ]
  s.add_dependency(%q{libxml-ruby}, [">= 0.9.7"])
  s.files = [
    "history.txt",
    "license.txt",
    "lib/nzb.rb",
    "lib/nzb/file.rb",
    "lib/nzb/segment.rb",
    "lib/nzb/parser.rb",
    "README.rdoc"
  ]
  s.text_files = [
    "spec/fixtures/sample.nzb",
    "spec/file_spec.rb",
    "spec/segment_spec.rb",
    "spec/parser_spec.rb",
    "spec/nzb_spec.rb"
  ]
  s.rdoc_options = ["--main", "Readme.rdoc"]
  s.extra_rdoc_files = ["Readme.rdoc"]
end