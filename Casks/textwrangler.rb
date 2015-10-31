cask :v1 => 'textwrangler' do
  version '5.0'
  sha256 'bba090699501a61a4592c73f5fe0eaf2e10b5f7eed5d4192b4f236491f9054cf'

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
