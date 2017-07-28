cask 'zoc' do
  version '7.15.2'
  sha256 'cf310792778f652c2d515e56d13ffef3dfbc2eafee45db501e9f5d95174f9f65'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "http://www.emtec.com/downloads/zoc/zoc#{version.no_dots}_changes.txt",
          checkpoint: 'e4323e87104849a700c8aa5c866d499bd2de2e43ea14975e4ad3da06cc956422'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
