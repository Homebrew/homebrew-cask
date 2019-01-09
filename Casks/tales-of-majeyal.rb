cask 'tales-of-majeyal' do
  version '1.5.10'
  sha256 'c955f1b0d84f532ffefacb4ed89b86af45bfb78e10e8a429722b8f055b1d5331'

  url "https://te4.org/dl/t-engine/t-engine4-osx-#{version}.zip"
  name 'Tales of Maj\'Eyal'
  homepage 'https://te4.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  app 'T-Engine.app', target: 'Tales-of-Maj\'Eyal.app'
end
