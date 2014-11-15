cask :v1 => 'totalterminal' do
  version '1.5.4'
  sha256 '159475ff641a05cbce2ca4463eac4ae98006b62396b9f1f59d396d68d71d7d87'

  url "http://downloads.binaryage.com/TotalTerminal-#{version}.dmg"
  homepage 'http://totalterminal.binaryage.com'
  license :unknown

  pkg 'TotalTerminal.pkg'
  uninstall :pkgutil => 'com.binaryage.pkg.totalterminal.app',
            :script => {
                        :executable => 'TotalTerminal Uninstaller.app/Contents/MacOS/TotalTerminal Uninstaller',
                        :args => %w[--headless],
                       }
end
