cask 'textexpander' do
  version '6.2.2'
  sha256 '669b1653659cdb2eb2907a1577313a53365a7f90579421f646c6f5366b74c9e3'

  # cdn.textexpander.com/mac was verified as official when first introduced to the cask
  url "https://cdn.textexpander.com/mac/TextExpander_#{version}.zip"
  appcast "https://smilesoftware.com/appcast/TextExpander#{version.major}.xml",
          checkpoint: 'f9de2c98be639250b79b9cc6d37d502b42b32e332dac8a3ed109d57b138aedd9'
  name 'TextExpander'
  homepage 'https://smilesoftware.com/TextExpander'

  auto_updates true
  accessibility_access true

  app 'TextExpander.app'

  uninstall login_item: 'TextExpander'

  zap trash: '~/Library/Application Support/TextExpander/'
end
