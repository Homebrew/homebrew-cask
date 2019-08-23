cask 'veraview' do
  version '3.0.2'
  sha256 '06a5d7b998422404238e654afd399c12d3fbf77402ec346a85d72ef3234317fc'

  # newton.ornl.gov/casl was verified as official when first introduced to the cask
  url "https://newton.ornl.gov/casl/VERAView-#{version}-MacOSX.dmg"
  appcast 'https://newton.ornl.gov/casl/'
  name 'veraview'
  homepage 'https://github.com/CASL/VERAview'

  pkg 'veraview.pkg'

  uninstall pkgutil: 'gov.casl.VERAView',
            delete:  '/Applications/VERAView.app'
end
