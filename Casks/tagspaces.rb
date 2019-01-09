cask 'tagspaces' do
  version '3.0.1'
  sha256 'e736ef1137c72d226eeead5190c35a32ad6272d7f07fa2fcc4633fdb4815f207'

  # github.com/tagspaces/tagspaces was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
