cask :v1 => 'tiny' do
  version :latest
  sha256 :no_check

  url 'http://www.delightfuldev.com/tiny/Tiny.zip'
  appcast 'http://www.delightfuldev.com/tiny/update.xml',
          :sha256 => '4a8122f8e561ab37133d3904147595ae7ce8ee7ada54286d6f5744dbf4809562'
  name 'Tiny'
  homepage 'http://www.delightfuldev.com/tiny/'
  license :gratis

  app 'Tiny.app'

  depends_on :macos => '>= 10.10'
end
