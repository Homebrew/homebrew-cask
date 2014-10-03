class CabContainer < TestCask
  version '1.2.3'
  sha256 '192d0cf6b727473f9ba0f55cec793ee2a8f7113c5cfe9d49e05a087436c5efe2'

  url TestHelper.local_binary_url('cabcontainer.cab')
  homepage 'http://example.com/cab-container'

  depends_on :formula => 'cabextract'
  app 'cabcontainer/Application.app'
end
