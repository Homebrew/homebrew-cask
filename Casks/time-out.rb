cask 'time-out' do
  if MacOS.version <= :mavericks
    version '1.7.1'
    sha256 '3c9892344c8313b8ccf0a76cceb00834ddbe26e5114bcd674c4fd53aeb44e310'
  else
    version '2.5'
    sha256 '2947b5af6489d4cc5328bd943ec5e0440484970539ee18810bb4f6e6bf1fbbf6'
  end

  url "https://www.dejal.com/download/timeout-#{version}.zip"
  appcast 'https://dejal.net/appcast/?prod=timeout&aed=direct&from=2037&rel=gen'
  name 'Time Out'
  homepage 'https://www.dejal.com/timeout/'

  app 'Time Out.app'
end
