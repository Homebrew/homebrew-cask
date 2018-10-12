cask 'waltr' do
  version '2.6.12,1538062927'
  sha256 'a8bbf2a5c3fdb579ea126f30dda71718e9a063ad5f4f086e9e4039f91982c3c7'

  # dl.devmate.com/com.softorino.waltr2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.waltr2/#{version.before_comma}/#{version.after_comma}/Waltr#{version.major}-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/com.softorino.waltr#{version.major}.xml"
  name 'WALTR'
  homepage "https://softorino.com/w#{version.major}/"

  app "Waltr #{version.major}.app"
end
