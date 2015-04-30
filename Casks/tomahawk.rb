cask :v1 => 'tomahawk' do
  version '0.8.3'
  sha256 'a5b4d2994544797ac461dc0a91b3d5836d117a17c6b2d7f92862c229e4532f5f'

  url "http://download.tomahawk-player.org/Tomahawk-#{version}.dmg"
  appcast 'http://download.tomahawk-player.org/sparkle/update.php',
          :sha256 => 'ef1c646c36717abdd5ffb12bd3a8f758fe12d575d975f6dca5353144679aca4f'
  homepage 'http://www.tomahawk-player.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tomahawk.app'
end
