cask 'unicodechecker' do
  version '1.17'
  sha256 'cb474087e25c94deccac85ae2f973b70969a0241ee029cb0f198554b1997ed9c'

  url 'http://earthlingsoft.net/UnicodeChecker/UnicodeChecker.zip'
  appcast 'http://earthlingsoft.net/UnicodeChecker/appcast.xml',
          :sha256 => '9cf39d239ce10e3d8c7d0709e05f6849657a6c7ff13ccd2f8337502f86b5a3de'
  name 'UnicodeChecker'
  homepage 'http://earthlingsoft.net/UnicodeChecker/'
  license :gratis

  app "UnicodeChecker #{version}/UnicodeChecker.app"
end
