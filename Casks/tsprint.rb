cask 'tsprint' do
  version :latest
  sha256 :no_check

  url 'http://www.terminalworks.com/downloads/tsprint/macosx/TSPrintClient.zip'
  name 'TSPrintClient'
  homepage 'http://www.terminalworks.com'
  license :gratis

  pkg 'TSPrintClient.pkg'

  uninstall quit:  'com.terminalworks.TSPrintClient',
            trash: '/Applications/TSPrintClient.app'
end
