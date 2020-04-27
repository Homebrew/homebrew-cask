cask 'zoc' do
  version '7.25.6'
  sha256 '6dba650cadc3cb7511870aa2e500f687a09d4948b4fe8253958fa52a6cb00c8a'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
