cask 'tiny' do
  version :latest
  sha256 :no_check

  # kaomojiformac.github.io was verified as official when first introduced to the cask
  url 'https://kaomojiformac.github.io/tiny-download/Tiny.zip'
  name 'Tiny'
  homepage 'https://www.delightfuldev.com/tiny/'

  depends_on macos: '>= :yosemite'

  app 'Tiny.app'
end
