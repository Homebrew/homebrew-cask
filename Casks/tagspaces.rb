cask 'tagspaces' do
  version '3.3.0'
  sha256 '5114fcf02a7afa6e2af8ced18a2bd1261a539c9f7b83c7e1a5be9ff07ed084f8'

  # github.com/tagspaces/tagspaces was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
