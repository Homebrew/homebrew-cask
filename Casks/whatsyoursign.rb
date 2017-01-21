cask 'whatsyoursign' do
  version '1.2.3'
  sha256 '385415996a5ce57865d591df4af679b2023e58d27e1f6237a8a90c60c8052f88'

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
