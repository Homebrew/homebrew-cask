cask 'zesarux' do
  version '4.2'
  sha256 '63608613276db8062d8688b0a8f9f9aa7445e73be695be3d2a81599226c96d78'

  url "https://downloads.sourceforge.net/zesarux/ZEsarUX_bin-#{version}-MountainLion_or_higher.dmg.gz"
  appcast 'https://sourceforge.net/projects/zesarux/rss',
          checkpoint: '5687bee64ebde5d8c48533c17d30bb91dabf0b25c5ccca9679d69652e3b7f7cb'
  name 'ZEsarUX'
  homepage 'https://sourceforge.net/projects/zesarux/'

  app 'ZEsarUX.app'
end
