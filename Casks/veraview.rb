cask 'veraview' do
  version '3.0.1'
  sha256 'e457a2a9cca850ef0e7c264fb91ef14739804cba3417a552997fe0194fb87dda'

  # newton.ornl.gov/casl was verified as official when first introduced to the cask
  url "https://newton.ornl.gov/casl/VERAView-#{version}-MacOSX.dmg"
  appcast 'https://newton.ornl.gov/casl/'
  name 'veraview'
  homepage 'https://github.com/CASL/VERAview'

  pkg 'veraview.pkg'

  uninstall pkgutil: 'gov.casl.VERAView',
            delete:  '/Applications/VERAView.app'
end
