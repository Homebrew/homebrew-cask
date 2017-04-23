cask 'tablauncher' do
  version '2.9.5'
  sha256 '97aaf949e292cfabe16b7f59cceb7cf58780a23eddcad6bf875732f16d588b3d'

  url "http://tablauncher.com/updates/TabLauncherV#{version}.dmg"
  appcast 'http://tablauncher.com/updates/appcast.xml',
          checkpoint: '45077fea58ccf4053e3921f72cd56eada2f2956bfe794cb76ab08cfe97447711'
  name 'TabLauncher'
  homepage 'http://tablauncher.com/'

  app 'TabLauncher.app'

  zap delete: [
                '~/Library/Caches/com.oktoid.tablauncher',
                '~/Library/Cookies/com.oktoid.tablauncher.binarycookies',
                '~/Library/Preferences/com.oktoid.tablauncher.plist',
                '~/Library/TabLauncher',
              ]
end
