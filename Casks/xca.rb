cask 'xca' do
  version '1.3.2'
  sha256 '8117821eef637c3fb78ce6e583fe0a3e667c714525e992b37d4d977a279a967e'

  url "https://downloads.sourceforge.net/xca/xca/#{version}/xca-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/xca/rss?path=/xca',
          checkpoint: '936bec75f8ece9b612ae7268ec93a6d2313a70342bda98b2a822f24f151750e3'
  name 'XCA'
  homepage 'http://xca.sourceforge.net/'

  app 'xca.app'
end
