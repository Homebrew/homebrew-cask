cask :v1 => 'zoc' do
  version '7.05.2'
  sha256 '32e7582df299b2527afb6f84ee239cca2d8fdcbdde2382c028438f296af6dd96'

  url "http://www.emtec.com/downloads/zoc/zoc#{version.delete('.')}.dmg"
  name 'ZOC'
  homepage 'http://www.emtec.com/zoc/'
  license :commercial

  app 'zoc7.app'
end
