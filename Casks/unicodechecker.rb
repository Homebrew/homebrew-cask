cask :v1 => 'unicodechecker' do
  version :latest
  sha256 :no_check

  url 'http://earthlingsoft.net/UnicodeChecker/UnicodeChecker.dmg'
  appcast 'http://earthlingsoft.net/UnicodeChecker/appcast.xml',
          :sha256 => '7dcfc17e0185d061702c0faa26b7dd587196b4b18aba3b56943c21d3d9096128'
  name 'UnicodeChecker'
  homepage 'http://earthlingsoft.net/UnicodeChecker/'
  license :gratis

  app 'UnicodeChecker.app'
end
