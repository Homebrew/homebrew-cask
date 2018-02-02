cask 'tiddly' do
  version '0.0.12'
  sha256 'c75d8a68360ab10ebe15917eea3c570094f5adf23411435fd53190ab509785f5'

  url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac64-v#{version}.zip"
  appcast 'https://github.com/Jermolene/TiddlyDesktop/releases.atom',
          checkpoint: '985ae77d9351beb2c4cb57eb8255fb08d166c170c09e03a2f01bab24e582da54'
  name 'TiddlyWiki'
  homepage 'https://github.com/Jermolene/TiddlyDesktop'

  app "TiddlyDesktop-mac64-v#{version}/TiddlyDesktop.app"
end
