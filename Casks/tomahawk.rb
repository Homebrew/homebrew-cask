cask :v1 => 'tomahawk' do
  version '0.8.1'
  sha256 '4d9c7ffeeb3fdcd660102e65c90fae3e8fe979960080b75c677bc99f6b559042'

  url "http://download.tomahawk-player.org/Tomahawk-#{version}.dmg"
  appcast 'http://download.tomahawk-player.org/sparkle/update.php',
          :sha256 => 'ef1c646c36717abdd5ffb12bd3a8f758fe12d575d975f6dca5353144679aca4f'
  homepage 'http://www.tomahawk-player.org/'
  license :unknown    # todo: improve this machine-generated value

  app 'Tomahawk.app'
end
