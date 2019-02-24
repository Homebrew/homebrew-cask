cask 'tagspaces' do
  version '3.1.1'
  sha256 'e4dd3622fa3b860594086dfb3743e4d3f93ce8e3196cea2ed5d39bc46ad8a0e5'

  # github.com/tagspaces/tagspaces was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
