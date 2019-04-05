cask 'wail' do
  version '0.2019.04.04'
  sha256 'd78d856c6445ff9f40297e15c1e0c2336997b52bc5a6a98460c056f18accd1c7'

  url "https://github.com/machawk1/wail/releases/download/v#{version}/WAIL_v#{version}_macOS.dmg"
  appcast 'https://github.com/machawk1/wail/releases.atom'
  name 'WAIL'
  homepage 'https://github.com/machawk1/wail'

  app 'WAIL.app'
end
