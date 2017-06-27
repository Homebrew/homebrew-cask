cask 'vimr' do
  version '0.16.1-208'
  sha256 '5cc8bb9c7034d366e53bbad35e9b19fd8229fc52a3a9e909b7e7ffd75b454d17'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '88c7e42430db2fcf975fe11db8f53a69b831a7c272f026b8beaa984f089aae67'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
