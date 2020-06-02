cask 'whatsyoursign' do
  version '1.6.1'
  sha256 'cff2bd76811ac16c9f5ce5ddbdfe9c4e245e9922d77ac6f49a6f0eb8120d78e2'

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
