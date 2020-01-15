cask 'tagspaces' do
  version '3.3.2'
  sha256 '68ddb090cbe9ab8ff38c05d6de5611fc190f17b9ba1925a85fe789fc3ff61428'

  # github.com/tagspaces/tagspaces was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
