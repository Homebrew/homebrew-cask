cask 'whatsyoursign' do
  version '1.2.3'
  sha256 '385415996a5ce57865d591df4af679b2023e58d27e1f6237a8a90c60c8052f88'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/WhatsYourSign_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/WhatsYourSign.txt',
          checkpoint: 'c42029832fa2b7320627554d841b7377b3326392512807aa4ffab4ca18680f31'
  name 'What\'s Your Sign?'
  homepage 'https://objective-see.com/products/whatsyoursign.html'

  depends_on macos: '>= :yosemite'

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
