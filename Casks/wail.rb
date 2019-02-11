cask 'wail' do
  version '0.2019.02.09'
  sha256 'b0f29d34d9796a308fa80b9d96aee1a15ab08ff0c29294b451b4041f1cbfd136'

  url "https://github.com/machawk1/wail/releases/download/v#{version}/WAIL_v#{version}_macOS.dmg"
  appcast 'https://github.com/machawk1/wail/releases.atom'
  name 'WAIL'
  homepage 'https://github.com/machawk1/wail'

  app 'WAIL.app'
end
