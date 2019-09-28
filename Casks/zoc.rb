cask 'zoc' do
  version '7.24.2'
  sha256 '70cd4a90e46a27f8840240cc3e9bc3e9505a94828e9a0717fce6f66b305eb10f'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
