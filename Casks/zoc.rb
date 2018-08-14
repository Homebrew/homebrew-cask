cask 'zoc' do
  version '7.20.2'
  sha256 'f6002ca85faabd19979502a6842cda86e6ac26396c6c75a4f338debf4b3b5f30'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
