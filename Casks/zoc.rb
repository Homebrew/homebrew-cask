cask 'zoc' do
  version '7.22.2'
  sha256 '830238c526a28e66914b0a08157484efddf3dd035705018d54e6ecc849881a13'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
