cask 'vimr' do
  version '0.16.2-210'
  sha256 '03f7037be3cc3a268fe1a271c74010f914adc0a9402937744562765edeaeca86'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '8cddda50615fd5c268b3838b219b95c5d89db496361f1bb0a75d3efbb8d876b9'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
