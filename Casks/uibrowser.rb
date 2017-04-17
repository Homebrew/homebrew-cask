cask :v1 => 'uibrowser' do
  version '2.5.0'
  sha256 '76a4d3c195d82c27d18b9477554fd1783ae72790b7671762310f8852a38ebc0a'

  # Currently not served via HTTPS
  url "http://pfiddlesoft.com/uibrowser/downloads/UIBrowser#{version.gsub(/\./,'')}.dmg"
  name 'uibrowser'
  homepage 'http://pfiddlesoft.com/uibrowser'
  license :closed

  pkg 'UI Browser.pkg'

  uninstall :pkgutil => [ 'com.pfiddlesoft.pkg.uibrowser',
                          'com.pfiddlesoft.pkg.uielementscriptsfolder',
                          'com.pfiddlesoft.pkg.pfassistiveframework',
                          'com.pfiddlesoft.pkg.pfeventtapsframework'
                        ]
end
