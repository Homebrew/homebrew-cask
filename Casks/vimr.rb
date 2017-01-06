cask 'vimr' do
  version '0.12.4-157'
  sha256 'e3cd0c7ef6f50419e82d60467331f580d58299a6cd80b9b000bf7b8f6fc488e6'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: 'b4b6d9225509bb109d6821b9165c1030eb6fb95c90ec84e7b0565e8e325e73c4'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
