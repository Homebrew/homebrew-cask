cask 'unicodechecker' do
  version '1.17'
  sha256 'cb474087e25c94deccac85ae2f973b70969a0241ee029cb0f198554b1997ed9c'

  url 'http://earthlingsoft.net/UnicodeChecker/UnicodeChecker.zip'
  appcast 'http://earthlingsoft.net/UnicodeChecker/appcast.xml',
          checkpoint: 'de148c37d18cc1903ecf5e11524b77671e848ed7074a4c2a5b51185352d692ad'
  name 'UnicodeChecker'
  homepage 'http://earthlingsoft.net/UnicodeChecker/'
  license :gratis

  app "UnicodeChecker #{version}/UnicodeChecker.app"
end
