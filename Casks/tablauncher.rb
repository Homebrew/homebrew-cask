cask 'tablauncher' do
  version '2.9.5'
  sha256 '97aaf949e292cfabe16b7f59cceb7cf58780a23eddcad6bf875732f16d588b3d'

  url "https://tablauncher.com/updates/TabLauncherV#{version}.dmg"
  appcast 'https://tablauncher.com/updates/appcast.xml'
  name 'TabLauncher'
  homepage 'https://tablauncher.com/'

  app 'TabLauncher.app'

  zap trash: [
               '~/Library/Caches/com.oktoid.tablauncher',
               '~/Library/Cookies/com.oktoid.tablauncher.binarycookies',
               '~/Library/Preferences/com.oktoid.tablauncher.plist',
               '~/Library/TabLauncher',
             ]
end
