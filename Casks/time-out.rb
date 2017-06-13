cask 'time-out' do
  if MacOS.version <= :snow_leopard
    version '1.6.5'
    sha256 '2ceec8d8938af0acf32af601337c129087bb3b8c132c1f18e6eb3581788b8a49'
  elsif MacOS.version <= :mavericks
    version '1.7.1'
    sha256 '3c9892344c8313b8ccf0a76cceb00834ddbe26e5114bcd674c4fd53aeb44e310'
  else
    version '2.2.1'
    sha256 '1e99900cc0fac14dc226d450943e8af396c02bb054cfb0277fc204c9f554c5a0'
  end

  url "http://www.dejal.com/download/timeout-#{version}.zip"
  name 'Time Out'
  homepage 'http://www.dejal.com/timeout/'

  app 'Time Out.app'
end
