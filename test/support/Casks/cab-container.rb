class CabContainer < TestCask
  url TestHelper.local_binary('cabcontainer.cab')
  homepage 'http://example.com/cab-container'
  version '1.2.3'
  sha256 '192d0cf6b727473f9ba0f55cec793ee2a8f7113c5cfe9d49e05a087436c5efe2'
  depends_on :formula => 'cabextract'
  link 'cabcontainer/Application.app'
end
