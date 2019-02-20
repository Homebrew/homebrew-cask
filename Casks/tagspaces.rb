cask 'tagspaces' do
  version '3.0.9'
  sha256 'a007da189183f6729404e4191be1c63fd9a638efdf69f2f803ff1b9e5484bc4e'

  # github.com/tagspaces/tagspaces was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
