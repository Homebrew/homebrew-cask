class CabContainer < TestCask
  url TestHelper.local_binary('cabcontainer.cab')
  homepage 'http://example.com/cab-container'
  version '1.2.3'
  sha1 '85bfbcfc8887a995ae0e724796a0c242341b3071'
  depends_on_formula 'cabextract'
  link 'cabcontainer/Application.app'
end
