cask 'xamarin-android' do
  version '7.4.0-21'
  sha256 '3859faa49bd9e7b928f3995603a685fe91733f2a236bb060e42fe5beed02c852'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '21f7412cc871cceda8f7caf320f994a15cf1ee2f57865518ff9ed027bb76d604'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
