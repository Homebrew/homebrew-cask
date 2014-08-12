class XamarinStudio < Cask
  version '5.0.1.3-0'
  sha256 '51e840a8b5e8679363290aee88af2cdadd9d99706ae346f787d07ecc27bdabe8'

  url 'http://download.xamarin.com/studio/Mac/XamarinStudio-5.0.1.3-0.dmg'
  # non-Sparkle appcast
  appcast 'http://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml'
  homepage 'http://xamarin.com/studio'

  link 'Xamarin Studio.app'
end
