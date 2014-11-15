cask :v1 => 'tomahawk' do
  version '0.8.0'
  sha256 'd1399948c23ad2bdb96e974ddbb302f385a30044dec3e0a947153b0d617c4568'

  url "http://download.tomahawk-player.org/Tomahawk-#{version}.dmg"
  appcast 'http://download.tomahawk-player.org/sparkle/update.php',
          :sha256 => 'ef1c646c36717abdd5ffb12bd3a8f758fe12d575d975f6dca5353144679aca4f'
  homepage 'http://www.tomahawk-player.org/'
  license :unknown

  app 'Tomahawk.app'
end
