cask 'tales-of-majeyal' do
  version '1.4.9'
  sha256 '74a4ea24359862dc3f20e5a61b609c4f962178dd9283c6c9a05f5038c93805a7'

  url "https://te4.org/dl/t-engine/t-engine4-osx-#{version}.zip"
  name 'Tales of Maj\'Eyal'
  homepage 'https://te4.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  app 'T-Engine.app', target: 'Tales-of-Maj\'Eyal.app'
end
