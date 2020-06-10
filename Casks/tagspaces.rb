cask 'tagspaces' do
  version '3.5.2'
  sha256 'e7ba6bf22185fb4f2e21082e5b5bbb81c93e1d98847ab633883d800765033254'

  # github.com/tagspaces/tagspaces/ was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
