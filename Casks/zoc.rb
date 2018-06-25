cask 'zoc' do
  version '7.19.2'
  sha256 'a7ce4fa7714a9cc5a57c1191458ae2a9ef35dc016b71699dd31f2cc588660cb9'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc#{version.major}_previous/"
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
