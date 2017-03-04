cask 'zesarux' do
  version '4.2'
  sha256 '63608613276db8062d8688b0a8f9f9aa7445e73be695be3d2a81599226c96d78'

  url "https://downloads.sourceforge.net/zesarux/ZEsarUX_bin-#{version}-MountainLion_or_higher.dmg.gz"
  appcast 'https://sourceforge.net/projects/zesarux/rss',
          checkpoint: '77bf54e734f0870baf27dbc7093bd23edac235c03c8072c0a8486088df13a5be'
  name 'ZEsarUX'
  homepage 'https://sourceforge.net/projects/zesarux/'

  app 'ZEsarUX.app'
end
