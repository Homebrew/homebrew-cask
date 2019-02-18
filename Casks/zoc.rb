cask 'zoc' do
  version '7.22.6'
  sha256 '2e7fd0d1d7fb38598915256b231b6503edd7c1f9cb592df6afde57a8d103c20e'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
