cask 'tales-of-majeyal' do
  version '1.3.1'
  sha256 '4f63480762ac783f60a93cb4e9a6b07cde772f62f1730f05915872569660469a'

  url "http://te4.org/dl/t-engine/t-engine4-osx-#{version}.zip"
  name 'Tales of Maj\'Eyal'
  homepage 'https://te4.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  app 'T-Engine.app', target: 'Tales-of-Maj\'Eyal.app'
end
