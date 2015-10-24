cask :v1 => 'zoc' do
  version '7.06.0'
  sha256 '08549be9d919bae6761f4cac784ab1bbead1758e4938e130289114099ed44768'

  url "http://www.emtec.com/downloads/zoc/zoc#{version.delete('.')}.dmg"
  name 'ZOC'
  homepage 'http://www.emtec.com/zoc/'
  license :commercial

  app 'zoc7.app'
end
