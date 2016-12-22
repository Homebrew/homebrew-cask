cask 'whatsyoursign' do
  version '1.2.1'
  sha256 'b05363ce2106e23eda95caef1f812fb6cb1dc8f983dee035a4730afe35fc13d6'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/WhatsYourSign_#{version}.zip"
  appcast 'https://objective-see.com/products.json',
          checkpoint: 'b2004932186e0eb176a9ac01fe499de292d502d7a17559e900822f9cdbfa74d6'
  name 'What\'s Your Sign?'
  homepage 'https://objective-see.com/products/whatsyoursign.html'

  installer manual: 'WhatsYourSign_Installer.app'

  uninstall_preflight do
    system_command '/usr/bin/pluginkit', args: ['-r', '/Applications/WhatsYourSign.app/Contents/PlugIns/WhatsYourSign.appex']
  end

  uninstall delete: [
                      '/Applications/WhatsYourSign.app',
                      '~/Library/Application Scripts/com.objective-see.WhatsYourSignExt.FinderSync',
                      '~/Library/Containers/com.objective-see.WhatsYourSignExt.FinderSync',
                    ]
end
