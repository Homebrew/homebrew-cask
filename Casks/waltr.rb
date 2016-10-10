cask 'waltr' do
  version :latest
  sha256 :no_check

  # devmate.com/com.softorino.Waltr was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.softorino.Waltr/WALTR.zip'
  name 'WALTR'
  homepage 'https://softorino.com/waltr'

  app 'Waltr.app'
end
