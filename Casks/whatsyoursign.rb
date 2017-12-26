cask 'whatsyoursign' do
  version '1.3.0'
  sha256 'e98a81e232b992924b4908e9a5e6259282211af8ec9c1bdce3900ff673af3bb7'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/WhatsYourSign_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/WhatsYourSign.txt',
          checkpoint: '81d6342cc46d18c81cb4f79a5bbac7861a1b0e22a0213f18d91f87207bc6f31e'
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
