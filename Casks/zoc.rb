cask 'zoc' do
  version '7.16.3'
  sha256 '8259cedd9e4c62ab16fdee101ac649772cc69a01a3f5b8db652b2911f2da39df'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc#{version.major}_previous/",
          checkpoint: 'e856b4b357052eeded0f282db04dca9687f47b3a01e72d2e2732cb7a5e3a7639'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
