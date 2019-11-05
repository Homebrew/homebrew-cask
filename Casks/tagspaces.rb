cask 'tagspaces' do
  version '3.2.6'
  sha256 '3017eb6a026bda78dc33f19e0247b95a8ba0c16ff2e9cc8b4a651e2f3b480b6d'

  # github.com/tagspaces/tagspaces was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
