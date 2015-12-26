cask 'waltr' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'https://dl.devmate.com/com.softorino.Waltr/WALTR.zip'
  name 'WALTR'
  homepage 'http://softorino.com/waltr'
  license :commercial

  app 'Waltr.app'
end
