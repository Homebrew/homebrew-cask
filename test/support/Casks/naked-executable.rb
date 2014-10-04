class NakedExecutable < TestCask
  version '1.2.3'
  sha256 '306c6ca7407560340797866e077e053627ad409277d1b9da58106fce4cf717cb'

  url TestHelper.local_binary_url('naked_executable')
  homepage 'http://example.com/naked-executable'

  container_type :naked
end
