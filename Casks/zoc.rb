cask 'zoc' do
  version '7.22.1'
  sha256 '49e0aff92b812418704d5fff8b019fd0d6c15c8e9b30961e4864dbb170cf13fe'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
