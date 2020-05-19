cask 'waltr' do
  version '2.6.25,1576244501'
  sha256 'dbed00a038e72dba3a0612498cc1650b031d61039d81ba04c4474307ae791150'

  # dl.devmate.com/com.softorino.waltr2/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.waltr2/#{version.before_comma}/#{version.after_comma}/Waltr#{version.major}-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/com.softorino.waltr#{version.major}.xml"
  name 'WALTR'
  homepage "https://softorino.com/w#{version.major}/"

  app "Waltr #{version.major}.app"
end
