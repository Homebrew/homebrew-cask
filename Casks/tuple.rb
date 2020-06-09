cask 'tuple' do
  version '0.76.1,2020-06-08-51b7a115'
  sha256 'ede2b96fab076c70b8dd7dafe70f850c3b8be10729633012860d4839e46c8db1'

  # s3.us-east-2.amazonaws.com/tuple-releases/ was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml'
  name 'Tuple'
  homepage 'https://tuple.app/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Tuple.app'

  uninstall quit:      'app.tuple.app',
            launchctl: 'app.tuple.app-LaunchAtLoginHelper'

  zap trash: [
               '~/Library/Application Scripts/app.tuple.app-LaunchAtLoginHelper',
               '~/Library/Application Support/app.tuple.app',
               '~/Library/Caches/app.tuple.app',
               '~/Library/Caches/com.crashlytics.data/app.tuple.app',
               '~/Library/Caches/io.fabric.sdk.mac.data/app.tuple.app',
               '~/Library/Containers/app.tuple.app-LaunchAtLoginHelper',
               '~/Library/Preferences/app.tuple.app.plist',
               '~/Library/WebKit/app.tuple.app',
             ]
end
