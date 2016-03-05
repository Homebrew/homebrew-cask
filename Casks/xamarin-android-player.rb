cask 'xamarin-android-player' do
  version :latest
  sha256 :no_check

  url 'https://xamarin-android-player.s3.amazonaws.com/installer/Mac/Xamarin%20Android%20Player.dmg'
  name 'Xamarin Android Player'
  homepage 'https://xamarin.com/android-player'
  license :gratis

  app 'Xamarin Android Player.app'
end
