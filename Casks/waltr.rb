cask 'waltr' do
  version '2.6.24,1575646877'
  sha256 '5996e1362b2fe16b4171f22e01fc35b96f3fea82321ab961c034454d69378316'

  # dl.devmate.com/com.softorino.waltr2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.waltr2/#{version.before_comma}/#{version.after_comma}/Waltr#{version.major}-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/com.softorino.waltr#{version.major}.xml"
  name 'WALTR'
  homepage "https://softorino.com/w#{version.major}/"

  app "Waltr #{version.major}.app"
end
