cask 'waltr' do
  version '2.6.8,1527095138'
  sha256 '75f74aaa6ef155cd47d21a609b845562a90fd45291f6aef6e60bb39d77224832'

  # dl.devmate.com/com.softorino.waltr2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.waltr2/#{version.before_comma}/#{version.after_comma}/Waltr#{version.major}-#{version.before_comma}.zip"
  appcast "http://updates.devmate.com/com.softorino.waltr#{version.major}.xml"
  name 'WALTR'
  homepage "https://softorino.com/w#{version.major}/"

  app "Waltr #{version.major}.app"
end
