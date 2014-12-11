cask :v1 => 'unicodechecker' do
  version :latest
  sha256 :no_check

  url 'http://earthlingsoft.net/UnicodeChecker/UnicodeChecker.dmg'
  homepage 'http://earthlingsoft.net/UnicodeChecker/'
  license :unknown    # todo: improve this machine-generated value

  app 'UnicodeChecker.app'
end
