cask 'tableau-reader' do
  version '2018.2.2'
  sha256 '98cd85886e2dec3c11fea43491511e33bd9beda78b312ec2d246f5a4c6ae8669'

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Reader'
  homepage 'https://www.tableau.com/products/reader'

  pkg 'Tableau Reader.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Reader.app',
                     ]
end
