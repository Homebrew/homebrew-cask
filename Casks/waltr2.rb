cask 'waltr' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/com.softorino.waltr2 was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.softorino.waltr2/Waltr2.zip'
  name 'WALTR 2'
  homepage 'https://softorino.com/w2'

  app 'Waltr 2.app'
end
