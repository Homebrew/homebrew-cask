cask 'time-out' do
  if MacOS.version <= :mavericks
    version '1.7.1'
    sha256 '3c9892344c8313b8ccf0a76cceb00834ddbe26e5114bcd674c4fd53aeb44e310'
  else
    version '2.6'
    sha256 '7a3787fa9e022a3e3509a11e8adcef75e078dfae17036986ddb0392522aecfe3'
  end

  url "https://www.dejal.com/download/timeout-#{version}.zip"
  appcast 'https://dejal.net/appcast/?prod=timeout&aed=direct&from=2037&rel=gen'
  name 'Time Out'
  homepage 'https://www.dejal.com/timeout/'

  app 'Time Out.app'
end
