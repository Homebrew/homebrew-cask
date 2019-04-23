cask 'xamarin-android' do
  version '9.2.3-0'
  sha256 'b79af0a777be9e3a1e440bf16383835cb5aa198171fa299ccc9e5fbd8e37a4cc'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v4/Mac/Universal/InstallationManifest.xml'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'

  zap trash: [
               '/Developer/MonoAndroid',
               '/Library/Frameworks/Xamarin.Android.framework',
               '~/Library/Caches/Xamarin.Android',
               '~/Library/Caches/XamarinBuildDownload',
             ]
end
