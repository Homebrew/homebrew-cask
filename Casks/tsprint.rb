cask 'tsprint' do
  version '1.6.2'
  sha256 'ad02697d2b663aa2041d01538187f54864aa5cfd10b7738516fcb087e272d9a6'

  url 'http://www.terminalworks.com/downloads/tsprint/macosx/TSPrintClient.zip'
  name 'TSPrintClient'
  homepage 'http://www.terminalworks.com'
  license :gratis

  pkg 'TSPrintClient.pkg'
    
  uninstall quit: 'com.terminalworks.TSPrintClient', trash: '/Applications/TSPrintClient.app'
end
