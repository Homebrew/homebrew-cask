cask 'waltr' do
  version '2.6.23,1573473986'
  sha256 'c7ce795649acb1faff75ed833b3b96b1519b0a82a1e1f8cab23a0e6fc7913495'

  # dl.devmate.com/com.softorino.waltr2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.waltr2/#{version.before_comma}/#{version.after_comma}/Waltr#{version.major}-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/com.softorino.waltr#{version.major}.xml"
  name 'WALTR'
  homepage "https://softorino.com/w#{version.major}/"

  app "Waltr #{version.major}.app"
end
