cask 'textwrangler' do
  if MacOS.release <= :lion
    version '4.5.12'
    sha256 'f25ce90a54570ee4fe2287cdbe5c8b2a57188423a3693becacfa0533f02e0aa2'

    url "http://pine.barebones.com/files/TextWrangler_#{version}.dmg"
  else
    version '5.0.2'
    sha256 '29484008bc95aee2e2731781b514cd60ca1e19fdb5a4b575ac5dbbf79472c346'

    # amazonaws.com is the official download host per the vendor homepage
    url "https://s3.amazonaws.com/BBSW-download/TextWrangler_#{version}.dmg"
  end
  appcast 'https://versioncheck.barebones.com/TextWrangler.xml',
          checkpoint: '8f6727cab0d906edadf8e6860ca81df08c743845296321b6b4e98bde03852096'
  name 'TextWrangler'
  homepage 'http://www.barebones.com/products/textwrangler'
  license :gratis

  depends_on macos: '>= :snow_leopard'

  app 'TextWrangler.app'
  binary 'TextWrangler.app/Contents/Helpers/edit'
  binary 'TextWrangler.app/Contents/Helpers/twdiff'
  binary 'TextWrangler.app/Contents/Helpers/twfind'
end
