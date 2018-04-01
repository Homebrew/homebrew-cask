cask 'time-out' do
  if MacOS.version <= :snow_leopard
    version '1.6.5'
    sha256 '2ceec8d8938af0acf32af601337c129087bb3b8c132c1f18e6eb3581788b8a49'
  elsif MacOS.version <= :mavericks
    version '1.7.1'
    sha256 '3c9892344c8313b8ccf0a76cceb00834ddbe26e5114bcd674c4fd53aeb44e310'
  else
    version '2.3'
    sha256 '89efede76841e2d7bc0d8759a90411b3b619705cb34372778409d7988c9fbb6c'
  end

  url "http://www.dejal.com/download/timeout-#{version}.zip"
  name 'Time Out'
  homepage 'http://www.dejal.com/timeout/'

  app 'Time Out.app'
end
