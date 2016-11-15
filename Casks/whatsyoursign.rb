cask 'whatsyoursign' do
  version '1.2.1'
  sha256 'b05363ce2106e23eda95caef1f812fb6cb1dc8f983dee035a4730afe35fc13d6'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/WhatsYourSign_#{version}.zip"
  name "What's YourSign?"
  homepage 'https://objective-see.com/products/whatsyoursign.html'

  installer manual: 'WhatsYourSign_Installer.app'

  uninstall delete: '/Applications/WhatsYourSign.app'
end
