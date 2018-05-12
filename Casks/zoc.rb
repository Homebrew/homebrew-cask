cask 'zoc' do
  version '7.18.3'
  sha256 '09b9ecf986e2227c7a567dab76d1fd5528bc34da42540ae7d1997921483fd0b9'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc#{version.major}_previous/",
          checkpoint: 'b4e6714565ef5d1598a5f95c5da1cdc36eb752cf76c21dd86af7b604ded8ca12'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
