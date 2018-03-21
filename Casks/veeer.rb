cask 'veeer' do
  version '2018.02'
  sha256 '9ce6c6d22d3f98e18226cad9cda11db970c91d2874773a9b739eabc9376b9f2e'

  url "https://veeer.io/wp-content/uploads/#{version.dots_to_slashes}/VEEER.zip"
  name 'VEEER'
  homepage 'https://veeer.io/'

  app 'VEEER.app'

  zap trash: '~/Library/Preferences/com.VEEER.veeer.plist'
end
