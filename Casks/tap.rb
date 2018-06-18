cask 'tap' do
  version '1.5.16,72:1521529036'
  sha256 '6d04bf5f6ae1da65be616a9142d885267ed2d60f13eed92d1c6a23e3aee41515'

  # dl.devmate.com/com.pabix.tap was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.pabix.tap/#{version.after_comma.before_colon}/#{version.after_colon}/Tap-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.pabix.tap.xml'
  name 'Tap'
  homepage 'http://tap.thepabix.com/'

  depends_on macos: '>= :yosemite'

  app 'Tap.app'
end
