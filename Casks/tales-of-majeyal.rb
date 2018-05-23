cask 'tales-of-majeyal' do
  version '1.5.9'
  sha256 'dbfbe0e4bdbf40e088a67397814c5c459111dd9c954b506d9aa0c7b0b9f6e243'

  url "https://te4.org/dl/t-engine/t-engine4-osx-#{version}.zip"
  name 'Tales of Maj\'Eyal'
  homepage 'https://te4.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  app 'T-Engine.app', target: 'Tales-of-Maj\'Eyal.app'
end
