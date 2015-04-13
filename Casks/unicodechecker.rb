cask :v1 => 'unicodechecker' do
  version :latest
  sha256 :no_check

  url 'http://earthlingsoft.net/UnicodeChecker/UnicodeChecker.dmg'
  homepage 'http://earthlingsoft.net/UnicodeChecker/'
  license :gratis

  app 'UnicodeChecker.app'
end
