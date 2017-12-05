cask 'zoc' do
  version '7.16.2'
  sha256 'c8432649c263132f1d993d09d81f3141072f86d4169bc4503ff27f080a423d61'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc#{version.major}_previous/",
          checkpoint: '9356113d224e407ef2f96e95dc8d910cc3990d886517edc0aa872bff12874578'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
