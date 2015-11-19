cask :v1 => 'textwrangler' do
  version '5.0.2'
  sha256 '29484008bc95aee2e2731781b514cd60ca1e19fdb5a4b575ac5dbbf79472c346'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/BBSW-download/TextWrangler_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/TextWrangler.xml',
          :sha256 => '11eab5ef576e132926b507f89031ff34419f1b817d7ff226755ea3c79ff76af6'
  name 'TextWrangler'
  homepage 'http://www.barebones.com/products/textwrangler'
  license :gratis

  app 'TextWrangler.app'
  binary 'TextWrangler.app/Contents/Helpers/edit'
  binary 'TextWrangler.app/Contents/Helpers/twdiff'
  binary 'TextWrangler.app/Contents/Helpers/twfind'
end
