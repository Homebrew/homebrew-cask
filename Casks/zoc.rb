cask :v1 => 'zoc' do
  version '6.65'
  sha256 'd099dd3772990ca18bf2f22b4638a14aabff00e6a593e61fb45004468e4cfbd4'

  url "http://www.emtec.com/downloads/zoc/zoc#{version.gsub('.','')}.dmg"
  name 'ZOC'
  homepage 'http://www.emtec.com/zoc/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'zoc6.app'
end
