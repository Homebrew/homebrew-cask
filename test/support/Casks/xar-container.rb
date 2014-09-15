class XarContainer < TestCask
  url TestHelper.local_binary('xarcontainer.xar')
  homepage 'http://example.com/xar-container'
  version '1.2.3'
  sha256 '1418752ac49e859f88590db245015cb2f8b459f619e0c50fd6ff87b902c72ee1'
  app 'xarcontainer/Application.app'
end
