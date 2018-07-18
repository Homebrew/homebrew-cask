cask 'zoc' do
  version '7.20.0'
  sha256 '417f24325fb1ffe6b9f8b064b0560f3e93ef9792c5f56a7e3ddb0cfdd6641f15'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
