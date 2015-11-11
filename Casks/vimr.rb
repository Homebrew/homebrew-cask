cask :v1 => 'vimr' do
  version '0.8.0-32'
  sha256 '8660e7d5157b3165faab8a228f67a1bd63016c51bc300af131b90edc18dda678'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-#{version.sub(%r{-.*},'')}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom'
  name 'VimR'
  homepage 'http://vimr.org/'
  license :gpl

  app 'VimR.app'
  binary 'VimR.app/Contents/Resources/vimr'
end
