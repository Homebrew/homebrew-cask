cask 'tiddlywiki' do
  version '0.0.9'
  sha256 '85ca27b3819643f46c20fea16bcdc1c426bdf691fa124d49d96a71e76982b34c'

  url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac64-v#{version}.zip"
  appcast 'https://github.com/Jermolene/TiddlyDesktop/releases.atom',
          checkpoint: '2b31415d87ec8d870bf0fdf39f1b27f9f8b60e28eac39dd050175d7caa29cc4e'
  name 'TiddlyWiki'
  homepage 'https://github.com/Jermolene/TiddlyDesktop'

  app "TiddlyDesktop-mac64-v#{version}/TiddlyWiki.app"
end
