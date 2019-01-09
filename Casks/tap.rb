cask 'tap' do
  version '1.5.18,74:1539630248'
  sha256 '3df94b8cf6a154ec216ebd9823e37b9f6b64b5fb6332ce14733eac4bfadacb80'

  # dl.devmate.com/com.pabix.tap was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.pabix.tap/#{version.after_comma.before_colon}/#{version.after_colon}/Tap-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.pabix.tap.xml'
  name 'Tap'
  homepage 'http://tap.thepabix.com/'

  depends_on macos: '>= :yosemite'

  app 'Tap.app'
end
