cask 'xamarin-android' do
  version '8.0.0-33'
  sha256 '30ec0c1ff1b622ec7bbcb5e5f1aa40db9de90edba05c4ac161b279a229f69905'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '796e78c229d3accc035db4eb28032362cd75666b907f0b8eb8169b00c883dd41'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
