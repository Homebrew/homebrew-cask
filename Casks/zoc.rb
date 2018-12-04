cask 'zoc' do
  version '7.22.0'
  sha256 '5657eff7836f4bb87fd806aef79168db264072fa0e234ca227fd19639a7e3fa5'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
