cask 'tales-of-majeyal' do
  version '1.5.8'
  sha256 '040a1fd7083ea73b00bc0b288905a39cf6ad57dfd49ee8a55e0174128a6fb2b0'

  url "https://te4.org/dl/t-engine/t-engine4-osx-#{version}.zip"
  name 'Tales of Maj\'Eyal'
  homepage 'https://te4.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  app 'T-Engine.app', target: 'Tales-of-Maj\'Eyal.app'
end
