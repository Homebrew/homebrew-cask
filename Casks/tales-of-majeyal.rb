cask 'tales-of-majeyal' do
  version '1.5.3'
  sha256 '409db15e4285e7287854f04add8ded4d68d91c88498d00bbe2a4ed016c7cb584'

  url "https://te4.org/dl/t-engine/t-engine4-osx-#{version}.zip"
  name 'Tales of Maj\'Eyal'
  homepage 'https://te4.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  app 'T-Engine.app', target: 'Tales-of-Maj\'Eyal.app'
end
