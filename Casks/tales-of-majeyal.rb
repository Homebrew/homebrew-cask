cask 'tales-of-majeyal' do
  version '1.5.7'
  sha256 'aa1239eb377234d61b47b4f7112581bf32a51c5d3c72c000fd8569303b3f56ec'

  url "https://te4.org/dl/t-engine/t-engine4-osx-#{version}.zip"
  name 'Tales of Maj\'Eyal'
  homepage 'https://te4.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  app 'T-Engine.app', target: 'Tales-of-Maj\'Eyal.app'
end
