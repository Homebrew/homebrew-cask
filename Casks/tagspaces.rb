cask 'tagspaces' do
  version '3.1.6'
  sha256 'b556439397b2f16554efa7f3f7ce21b626523a19b2735d3d984fd65e21e45f5c'

  # github.com/tagspaces/tagspaces was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
