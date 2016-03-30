cask 'time-out' do
  if MacOS.release <= :snow_leopard
    version '1.6.5'
    sha256 '2ceec8d8938af0acf32af601337c129087bb3b8c132c1f18e6eb3581788b8a49'
  elsif MacOS.release <= :mavericks
    version '1.7.1'
    sha256 '3c9892344c8313b8ccf0a76cceb00834ddbe26e5114bcd674c4fd53aeb44e310'
  else
    version '2.0.1'
    sha256 '2748f22d74cab6c468b2f6bed4d6ba06e702d34cbc2778b687262f27cf9e5350'
  end

  url "http://www.dejal.com/download/timeout-#{version}.zip"
  name 'Time Out'
  homepage 'http://www.dejal.com/timeout/'
  license :gratis

  app 'Time Out.app'
end
