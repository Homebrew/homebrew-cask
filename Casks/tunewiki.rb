cask :v1 => 'tunewiki' do
  version :latest
  sha256 :no_check

  url 'https://www.tunewiki.com/download/desktop/TuneWiki_Installer.dmg'
  homepage 'http://www.tunewiki.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TuneWiki.app'
end
