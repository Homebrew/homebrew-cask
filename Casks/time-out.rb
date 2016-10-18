cask 'time-out' do
  if MacOS.version <= :snow_leopard
    version '1.6.5'
    sha256 '2ceec8d8938af0acf32af601337c129087bb3b8c132c1f18e6eb3581788b8a49'
  elsif MacOS.version <= :mavericks
    version '1.7.1'
    sha256 '3c9892344c8313b8ccf0a76cceb00834ddbe26e5114bcd674c4fd53aeb44e310'
  else
    version '2.1'
    sha256 'ed3045c94b12ac7b6dfe6f4ee0f1b8ba1e2251d5e89b0afb25db913dc7a30609'
  end

  url "http://www.dejal.com/download/timeout-#{version}.zip"
  name 'Time Out'
  homepage 'http://www.dejal.com/timeout/'

  app 'Time Out.app'
end
