cask 'tiny' do
  version '1.0.8'
  sha256 'da10d22eb1e7c35b809bb8fa81a2d16017c18b6f883adfddb5f8e458bee5dbc2'

  # kaomojiformac.github.io was verified as official when first introduced to the cask
  url 'https://kaomojiformac.github.io/tiny-download/Tiny.zip'
  appcast 'https://kaomojiformac.github.io/tiny-download/tinyupdate.xml'
  name 'Tiny'
  homepage 'https://www.delightfuldev.com/tiny/'

  depends_on macos: '>= :yosemite'

  app 'Tiny.app'
end
