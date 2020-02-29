cask 'tagspaces' do
  version '3.4.0'
  sha256 '4157cf316c4b57badd65ba4bf1845b553d726ebea57bf292f1f85cdf88f2cea9'

  # github.com/tagspaces/tagspaces was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
