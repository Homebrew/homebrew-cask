cask :v1 => 'textwrangler' do
  version '4.5.11'
  sha256 'a4c5dbdaa8f9211372fb21cc4c7d54b44d89e70a8537bb02034de27ec5e95039'

  url "http://ven.barebones.com/TextWrangler_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/TextWrangler.xml',
          :sha256 => '3cee097b60d3e2b61835886aa980b6987dd9dd08aee4e8f98b43d6a1f3065cad'
  homepage 'http://www.barebones.com/products/textwrangler'
  license :unknown

  app 'TextWrangler.app'
end
