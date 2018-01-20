cask 'zoc' do
  version '7.17.2'
  sha256 '98427d92cbbf747b3e2e879c10c03a7126452244183b31a1b4bea8b6bc0145b9'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc#{version.major}_previous/",
          checkpoint: 'b07202bb41871a2d89cabc0f582a83c17ed18f449af8273dc0c0b3ac2d57f06e'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
