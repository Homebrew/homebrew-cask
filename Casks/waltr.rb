cask 'waltr' do
  version '2.6.20,1551195567'
  sha256 '8d68f0ee7a8f2a5d3d0370f6b93df711fe3008cb6ddb577ae3b88f5d4cca5b68'

  # dl.devmate.com/com.softorino.waltr2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.waltr2/#{version.before_comma}/#{version.after_comma}/Waltr#{version.major}-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/com.softorino.waltr#{version.major}.xml"
  name 'WALTR'
  homepage "https://softorino.com/w#{version.major}/"

  app "Waltr #{version.major}.app"
end
