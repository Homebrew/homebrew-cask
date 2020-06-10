cask 'tagspaces' do
  version '3.5.4'
  sha256 '70a7310eedaa0dae35fd872e1849e8f59cf6e22b35b29e12b629af139ecc716a'

  # github.com/tagspaces/tagspaces/ was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
