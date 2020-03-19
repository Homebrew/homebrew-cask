cask 'tagspaces' do
  version '3.4.2'
  sha256 '8fa1d9ab15887f142d125a450c368bd6275a96a377c560076ed5bc83e9c849ba'

  # github.com/tagspaces/tagspaces was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
