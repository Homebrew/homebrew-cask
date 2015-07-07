cask :v1 => 'textwrangler' do
  version '4.5.12'
  sha256 'f25ce90a54570ee4fe2287cdbe5c8b2a57188423a3693becacfa0533f02e0aa2'

  url "http://ven.barebones.com/TextWrangler_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/TextWrangler.xml',
          :sha256 => '3cee097b60d3e2b61835886aa980b6987dd9dd08aee4e8f98b43d6a1f3065cad'
  name 'TextWrangler'
  homepage 'http://www.barebones.com/products/textwrangler'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TextWrangler.app'
  binary 'TextWrangler.app/Contents/Helpers/edit'
  binary 'TextWrangler.app/Contents/Helpers/twdiff'
  binary 'TextWrangler.app/Contents/Helpers/twfind'
end
