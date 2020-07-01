cask 'tagspaces' do
  version '3.5.4'
  sha256 '47f3bca6918fd66628f3e4f70aaac4f9daa17b26092d78ce01b9c1a6ea4972d0'

  # github.com/tagspaces/tagspaces/ was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
