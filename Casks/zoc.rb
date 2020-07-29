cask 'zoc' do
  version '7.25.8'
  sha256 '8a27a434f832d26ef45e9d9b9a7c88702f9f022d977fe126a3d708ede39e02df'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
