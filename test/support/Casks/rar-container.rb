class RarContainer < TestCask
  url TestHelper.local_binary('rarcontainer.rar')
  homepage 'http://example.com/rar-container'
  version '1.2.3'
  sha1 '8635d0fd1a62f51102784fb38be428eda1e0df26'
  depends_on_formula 'unar'
  link 'rarcontainer/Application.app'
end
