cask 'xamarin-android' do
  version '7.3.0-13'
  sha256 'eb4024e7d6710794a55fe812a8239df0fd5ed97f95ae6513d22543c4974253cc'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '477c85901ee0146c2f34467c8cfc1f3a94bcb96c5467bb8b5cfc1ed765b3676e'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
