cask 'tagspaces' do
  version '3.1.4'
  sha256 '563cdddaf9e48f3cafa60a245cb3ef332f15f9d90d1f58de0dbb9cba0d8fd73d'

  # github.com/tagspaces/tagspaces was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
