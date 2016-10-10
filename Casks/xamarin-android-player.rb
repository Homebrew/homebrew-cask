cask 'xamarin-android-player' do
  version '0.6.5,15.43'
  sha256 'c7b220dfbe1dc876597fcb35e55834d42066fcb41747b52c760c3f0a78943da3'

  # xamarin-android-player.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://xamarin-android-player.s3.amazonaws.com/player/mac/#{version.before_comma}/XAP-Beta-#{version.after_comma}-v#{version.before_comma}.dmg"
  name 'Xamarin Android Player'
  homepage 'https://xamarin.com/android-player'

  pkg "XAP-Beta-#{version.after_comma}-v#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.xamarin.xamarinandroidplayer'
end
