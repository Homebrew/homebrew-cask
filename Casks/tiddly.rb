cask 'tiddly' do
  version '0.0.13'
  sha256 '8125475c3c18fdd029c38361287d64abb4ced1552bf8b60fb9ae86e98e9bddbe'

  url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac64-v#{version}.zip"
  appcast 'https://github.com/Jermolene/TiddlyDesktop/releases.atom'
  name 'TiddlyWiki'
  homepage 'https://github.com/Jermolene/TiddlyDesktop'

  app "TiddlyDesktop-mac64-v#{version}/TiddlyDesktop.app"
end
