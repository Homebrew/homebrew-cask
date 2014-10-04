class XarContainer < TestCask
  version '1.2.3'
  sha256 '1418752ac49e859f88590db245015cb2f8b459f619e0c50fd6ff87b902c72ee1'

  url TestHelper.local_binary_url('xarcontainer.xar')
  homepage 'http://example.com/xar-container'

  app 'xarcontainer/Application.app'
end
