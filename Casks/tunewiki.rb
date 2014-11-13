cask :v1 => 'tunewiki' do
  version :latest
  sha256 :no_check

  url 'https://www.tunewiki.com/download/desktop/TuneWiki_Installer.dmg'
  homepage 'http://www.tunewiki.com/'
  license :unknown

  app 'TuneWiki.app'
end
