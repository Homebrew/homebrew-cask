cask 'zoc' do
  version '7.26.0'
  sha256 '813ecfaa31b64810b2c362b19ef316e550d2673086d55d12ac4d777aeff6252a'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
