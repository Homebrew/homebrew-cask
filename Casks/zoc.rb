cask :v1 => 'zoc' do
  version '7.04.1'
  sha256 '057d2b283caa1aacec66d162b1aefd6638f7c78b97fa3d3b6ea4aab3b9480b70'

  url "http://www.emtec.com/downloads/zoc/zoc#{version.gsub('.','')}.dmg"
  name 'ZOC'
  homepage 'http://www.emtec.com/zoc/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'zoc7.app'
end
