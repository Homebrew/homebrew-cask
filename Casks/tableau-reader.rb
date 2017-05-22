cask 'tableau-reader' do
  version '10.2.2'
  sha256 'a10e7ffdeef286768f5423519e5342dd1fdea5ab783ae4421fbf2861d96f763e'

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Reader'
  homepage 'https://www.tableau.com/products/reader'

  pkg 'Tableau Reader.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Reader.app',
                     ]
end
