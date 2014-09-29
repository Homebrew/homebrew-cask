class Ubar < Cask
  version '2.2.6'
  sha256 '3c44cbdcaa99658d2b12e50756668e3b60beea90667c35bccde3412f80cf65c9'

  url 'http://www.brawersoftware.com/downloads/ubar/ubar226.zip'
  homepage 'http://brawersoftware.com/products/ubar'

  app 'uBar.app'
  caveats do
    os_version_only("10.9", "10.10")
  end
end
