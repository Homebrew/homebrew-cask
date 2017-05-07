cask 'vimr' do
  version '0.14.3-185'
  sha256 '3bae52d8bd27943f64b41645466fa5c4482b50df4bd8bd151281c7509047517f'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '4130f45b6b31c103ea009b80c09529b29bb75de7de566bed168363d9dbce25ba'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
