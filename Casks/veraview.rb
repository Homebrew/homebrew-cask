cask 'veraview' do
  version '3.0.4'
  sha256 'd48d0239f7f504a813c512ea0199e6c5e1983336eee6692be2b567237ba0f61e'

  # newton.ornl.gov/casl was verified as official when first introduced to the cask
  url "https://newton.ornl.gov/casl/VERAView-#{version}-MacOSX.dmg"
  appcast 'https://newton.ornl.gov/casl/'
  name 'veraview'
  homepage 'https://github.com/CASL/VERAview'

  pkg 'veraview.pkg'

  uninstall pkgutil: 'gov.casl.VERAView',
            delete:  '/Applications/VERAView.app'
end
