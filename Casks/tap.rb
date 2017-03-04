cask 'tap' do
  version :latest
  sha256 :no_check

  if MacOS.version <= :mavericks
    # dl.devmate.com/com.pabix.tap-mountain was verified as official when first introduced to the cask
    url 'https://dl.devmate.com/com.pabix.tap-mountain/Tap-mountain.dmg'
  else
    # dl.devmate.com/com.pabix.tap was verified as official when first introduced to the cask
    url 'https://dl.devmate.com/com.pabix.tap/Tap.dmg'
  end

  name 'Tap'
  homepage 'http://tap.thepabix.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Tap.app'
end
