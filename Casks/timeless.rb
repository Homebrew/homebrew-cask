cask 'timeless' do
  version '2020.6'
  sha256 '92ab27afe308f9504c9987dd0a8796ef0d258148cd3a2ba3a843e0237cc311fe'

  # appcenter-filemanagement-distrib5ede6f06e.azureedge.net was verified as official when first introduced to the cask
  url 'https://appcenter-filemanagement-distrib5ede6f06e.azureedge.net/0db45df7-ede6-4c29-b404-dafd0f112dc6/Timeless.zip?sv=2018-03-28&sr=c&sig=yDjjD9aZrQpwZF%2BinM%2FjkIPbcd7NsN0VOJRfzdQT7NU%3D&se=2020-03-30T06%3A46%3A49Z&sp=r'
  appcast 'https://api.appcenter.ms/v0.1/public/sparkle/apps/a60660de-45e2-4934-ab55-4ae460776b89'
  name 'Timeless'
  homepage 'https://www.dangercove.com/timeless/'

  auto_updates true

  app 'Timeless.app'

  uninstall launchctl: 'com.dangercove.Timeless.Mac-LaunchAtLoginHelper',
            quit:      'com.dangercove.Timeless.Mac'

  zap trash: [
               '~/Library/Application Scripts/com.dangercove.Timeless.Mac',
               '~/Library/Application Scripts/com.dangercove.Timeless.Mac-LaunchAtLoginHelper',
               '~/Library/Containers/com.dangercove.Timeless.Mac',
             ]
end
