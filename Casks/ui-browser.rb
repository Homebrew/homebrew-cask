cask 'ui-browser' do
  version '2.5.0'
  sha256 '76a4d3c195d82c27d18b9477554fd1783ae72790b7671762310f8852a38ebc0a'

  url "http://pfiddlesoft.com/uibrowser/downloads/UIBrowser#{version.delete('.')}.dmg"
  name 'UI Browser'
  homepage 'http://pfiddlesoft.com/uibrowser'
  license :closed

  pkg 'UI Browser.pkg'

  uninstall pkgutil: [
                       'com.pfiddlesoft.pkg.uibrowser',
                       'com.pfiddlesoft.pkg.uielementscriptsfolder',
                       'com.pfiddlesoft.pkg.pfassistiveframework',
                       'com.pfiddlesoft.pkg.pfeventtapsframework',
                     ]
end
