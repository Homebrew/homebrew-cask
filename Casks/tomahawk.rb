cask :v1 => 'tomahawk' do
  version '0.8.2'
  sha256 'b9b121643a04ca3c6590c02ff538daa4b91593f7bfa6a0e7ae5fb1b3768d2563'

  url "http://download.tomahawk-player.org/Tomahawk-#{version}.dmg"
  appcast 'http://download.tomahawk-player.org/sparkle/update.php',
          :sha256 => 'ef1c646c36717abdd5ffb12bd3a8f758fe12d575d975f6dca5353144679aca4f'
  homepage 'http://www.tomahawk-player.org/'
  license :unknown    # todo: improve this machine-generated value

  app 'Tomahawk.app'
end
