cask 'zoc' do
  version '7.07.1'
  sha256 '9fd116b6960c8ee1a05a1601ad60a1881472a949cc4f1e8206ace84a0e47075c'

  url "http://www.emtec.com/downloads/zoc/zoc#{version.delete('.')}.dmg"
  name 'ZOC'
  homepage 'http://www.emtec.com/zoc/'
  license :commercial

  app 'zoc7.app'
end
