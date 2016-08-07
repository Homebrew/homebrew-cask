cask 'time-out' do
  if MacOS.version <= :snow_leopard
    version '1.6.5'
    sha256 '2ceec8d8938af0acf32af601337c129087bb3b8c132c1f18e6eb3581788b8a49'
  elsif MacOS.version <= :mavericks
    version '1.7.1'
    sha256 '3c9892344c8313b8ccf0a76cceb00834ddbe26e5114bcd674c4fd53aeb44e310'
  else
    version '2.0.2'
    sha256 'f28b6cf73fc51801495b75e94108969700d06492d81d17ba7244040c251182cc'
  end

  url "http://www.dejal.com/download/timeout-#{version}.zip"
  name 'Time Out'
  homepage 'http://www.dejal.com/timeout/'
  license :gratis

  app 'Time Out.app'
end
