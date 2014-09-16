class NakedExecutableDslOne < TestCask
  # todo: This Cask can be removed after DSL 1.0 transition,
  #       b/c the main Cask naked-executable.rb will be
  #       adopting this syntax.
  url TestHelper.local_binary_url('naked_executable')
  homepage 'http://example.com/naked-executable'
  version '1.2.3'
  sha256 '306c6ca7407560340797866e077e053627ad409277d1b9da58106fce4cf717cb'
  container :type => :naked
end
