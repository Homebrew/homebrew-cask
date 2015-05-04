cask :v1 => 'tiddlywiki' do
  version '0.0.4'

  if Hardware::CPU.is_32_bit?
    sha256 '7d19e330c10c28694dbfef2ba09a66422d22f77e532b51831ab4404b7d9d23c6'
    url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac32-#{version}.zip"
  else
    sha256 'e7ec36897c60c40f56ac0e1c66395e1c517ca403d9d1c0188738be6a7a0b8400'
    url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac64-#{version}.zip"
    appcast 'https://github.com/Jermolene/TiddlyDesktop/releases.atom'
  end

  name 'TiddlyWiki'
  homepage 'https://github.com/Jermolene/TiddlyDesktop'
  license :bsd

  app 'TiddlyWiki.app'
end
