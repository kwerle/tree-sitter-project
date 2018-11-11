require 'tree-sitter'

def test_method
  TreeSitter::Document.new('a + b * 5', language: 'tree_sitter_python')
end

puts test_method()
