cask 'tap' do
  version '1.5.17,73:1538120209'
  sha256 '47ca67811e0b3ad13c221e9b465c79578cbfac12950ec4b8c9b97adcb2ec18de'

  # dl.devmate.com/com.pabix.tap was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.pabix.tap/#{version.after_comma.before_colon}/#{version.after_colon}/Tap-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.pabix.tap.xml'
  name 'Tap'
  homepage 'http://tap.thepabix.com/'

  depends_on macos: '>= :yosemite'

  app 'Tap.app'
end
