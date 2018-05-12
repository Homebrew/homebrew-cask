cask 'whatsyoursign' do
  version '1.5.0'
  sha256 '04176ae70b0850f963951a7d1e28beafbd004d5bcdc4b707dbe2b15fe59a3d83'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/WhatsYourSign_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/WhatsYourSign.txt',
          checkpoint: '8ae427edbf036ab38b1bb9039dedc0e1be3756d0fa4a040db655721502532cf0'
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
