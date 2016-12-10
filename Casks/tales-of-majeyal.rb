cask 'tales-of-majeyal' do
  version '1.4.9'
  sha256 'c0151cbec9621e88235103196924ff28e343c8d18a3bbb8882ae9f6a56b75d59'

  url "http://te4.org/dl/t-engine/t-engine4-osx-#{version}.zip"
  name 'Tales of Maj\'Eyal'
  homepage 'https://te4.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  app 'T-Engine.app', target: 'Tales-of-Maj\'Eyal.app'
end
