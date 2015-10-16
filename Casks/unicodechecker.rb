cask :v1 => 'unicodechecker' do
  version '1.17'
  sha256 'cb474087e25c94deccac85ae2f973b70969a0241ee029cb0f198554b1997ed9c'

  url 'http://earthlingsoft.net/UnicodeChecker/UnicodeChecker.zip'
  appcast 'http://earthlingsoft.net/UnicodeChecker/appcast.xml',
          :sha256 => '7dcfc17e0185d061702c0faa26b7dd587196b4b18aba3b56943c21d3d9096128'
  name 'UnicodeChecker'
  homepage 'http://earthlingsoft.net/UnicodeChecker/'
  license :gratis

  app "UnicodeChecker #{version}/UnicodeChecker.app"
end
