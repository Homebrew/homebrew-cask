cask 'whatsyoursign' do
  version '1.6.0'
  sha256 '5b6f8ef78f3f859170a59bd0cf3c2c254f1e0baee005f718c1267f5f068cf78e'

  # bitbucket.org/objective-see/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/WhatsYourSign_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/WhatsYourSign.txt'
  name 'What\'s Your Sign?'
  homepage 'https://objective-see.com/products/whatsyoursign.html'

  depends_on macos: '>= :yosemite'

  installer manual: 'WhatsYourSign Installer.app'

  uninstall delete: [
                      '/Applications/WhatsYourSign.app',
                      '~/Library/Application Scripts/com.objective-see.WhatsYourSignExt.FinderSync',
                      '~/Library/Containers/com.objective-see.WhatsYourSignExt.FinderSync',
                    ],
            script: {
                      executable:   '/usr/bin/pluginkit',
                      args:         [
                                      '-r',
                                      '/Applications/WhatsYourSign.app/Contents/PlugIns/WhatsYourSign.appex',
                                    ],
                      must_succeed: false,
                    }
end
