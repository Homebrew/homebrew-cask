cask :v1 => 'xmind' do
  version '3.5.1'
  sha256 '9b57dcfd1a2c0a80ff9faf296560594cd25e65e50916c0dbb96b165ecc690801'

  url "http://dl3.xmind.net/xmind-macosx-#{version}.201411201906.dmg"
  homepage 'http://www.xmind.net'
  license :unknown    # todo: improve this machine-generated value

  app 'XMind.app'
end
