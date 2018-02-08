cask 'zoc' do
  version '7.17.4'
  sha256 '2f64c27dbd1398a125bdf62ded9d9b62744ad94cdf25d2f6ba02668d1ed1350a'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc#{version.major}_previous/",
          checkpoint: 'f41d8fe5758e4d129837f6272d86abcb545554a98375ff4ccba1689afc89c09b'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
