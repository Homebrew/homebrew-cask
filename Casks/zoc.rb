cask 'zoc' do
  version '7.12.3'
  sha256 '0303c413669008a789c5dcd9fc6c0f34645abbed1b02fd70f8950f22e47a39a3'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
