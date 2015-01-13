cask :v1 => 'tiddlywiki' do
  version '0.0.4'
  sha256 'e7ec36897c60c40f56ac0e1c66395e1c517ca403d9d1c0188738be6a7a0b8400'

  url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac64-#{version}.zip"
  homepage 'https://github.com/Jermolene/TiddlyDesktop'
  license :oss

  app 'TiddlyWiki.app'
end
