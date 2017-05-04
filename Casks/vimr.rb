cask 'vimr' do
  version '0.14.2-184'
  sha256 '978fa81a5f946b9122a328aa26809620e3b4e1302229590363d3b33b8162fd52'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '0184afa2f70bb203637180ecd7d76398556c7e6dea283892130bb593b339e33e'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
