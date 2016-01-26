cask 'tiny' do
  version :latest
  sha256 :no_check

  url 'http://www.delightfuldev.com/assets/files/tiny/Tiny.zip'
  name 'Tiny'
  homepage 'http://www.delightfuldev.com/tiny/'
  license :gratis

  depends_on macos: '>= 10.10'

  app 'Tiny.app'
end
