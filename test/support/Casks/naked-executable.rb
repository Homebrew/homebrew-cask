class NakedExecutable < TestCask
  url TestHelper.local_binary('naked_executable')
  homepage 'http://example.com/naked-executable'
  version '1.2.3'
  sha1 '504519c842b7202250315ef562069e4ce10da99c'
  container_type :naked
end
