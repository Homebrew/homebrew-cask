cask 'tagspaces' do
  version '3.2.5'
  sha256 '370104e2c94e468a1c0e60674010c7ad3f7c87f5b6b8ea3905092294a2659d13'

  # github.com/tagspaces/tagspaces was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
