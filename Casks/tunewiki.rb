cask 'tunewiki' do
  version :latest
  sha256 :no_check

  url 'https://www.tunewiki.com/download/desktop/TuneWiki_Installer.dmg'
  name 'TuneWiki'
  homepage 'http://www.tunewiki.com/'

  app 'TuneWiki.app'
end
