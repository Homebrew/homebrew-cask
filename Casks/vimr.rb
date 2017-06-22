cask 'vimr' do
  version '0.16.0-205'
  sha256 'd9717861767666cd9c2503408a10f4e92219030283568a8dd4a346308eaf92cc'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '53c00a0b368982be2edd2382abf87a77f71b459eb4b6dabc4d8dda30bf218e67'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
