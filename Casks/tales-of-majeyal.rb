cask 'tales-of-majeyal' do
  version '1.5.5'
  sha256 'd0489f5973146ca19812be402af1492a71a3c024f876b622c4bb2be966a662a4'

  url "https://te4.org/dl/t-engine/t-engine4-osx-#{version}.zip"
  name 'Tales of Maj\'Eyal'
  homepage 'https://te4.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  app 'T-Engine.app', target: 'Tales-of-Maj\'Eyal.app'
end
