cask 'trailer' do
  version '1.3.21'
  sha256 '8243e1509146b38b76d5d71772936cf1665367b884bf814f2200f96a903600c1'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: '6f675e6432be10165ed8fc78692c79bc4c291e34215e44da0ef59f692ba2893c'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'

  zap delete: [
                '~/Library/Application Support/com.housetrip.Trailer',
                '~/Library/Caches/com.housetrip.Trailer',
                '~/Library/Preferences/com.housetrip.Trailer.plist',
              ]
end
