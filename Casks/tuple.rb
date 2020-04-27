cask 'tuple' do
  version '0.70.1,2020-04-19-22d584e5'
  sha256 'ab81ab1b48a4b2bb9b485f8d1c228683a2436640ad2e285d951d5ff0c09f2347'

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
