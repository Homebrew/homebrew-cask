cask 'tales-of-majeyal' do
  version '1.6.0'
  sha256 'c7ca6ecc1f6a0220bc4a5f27de99a988085ba997ccf406c657051f3df9805a0c'

  url "https://te4.org/dl/t-engine/t-engine4-osx-#{version}.zip"
  appcast 'https://te4.org/download'
  name "Tales of Maj'Eyal"
  homepage 'https://te4.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  app 'T-Engine.app', target: "Tales-of-Maj'Eyal.app"
end
