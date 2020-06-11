cask 'waltr' do
  version '2.6.26'
  sha256 '47ebc0efeebd56a32b6ce5187e4b20998cf4ac4a9ee03e4af9584dc602147145'

  # dl.devmate.com/com.softorino.waltr2/ was verified as official when first introduced to the cask
  url "https://shining.softorino.com/shine_uploads/waltr#{version.major}mac_#{version}.dmg"
  appcast "https://api.softorino.com/v1/app-manager/waltr#{version.major}/mac/updates"
  name 'WALTR'
  homepage "https://softorino.com/w#{version.major}/"

  app "Waltr #{version.major}.app"
end
