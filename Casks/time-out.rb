cask 'time-out' do
  if MacOS.version <= :mavericks
    version '1.7.1'
    sha256 '3c9892344c8313b8ccf0a76cceb00834ddbe26e5114bcd674c4fd53aeb44e310'
  else
    version '2.6.1'
    sha256 'c8eca829aa6f7120c742180bbd6e96b4d3e8c98a9cbc7274c83aa86ce56a0375'
  end

  url "https://www.dejal.com/download/timeout-#{version}.zip"
  appcast 'https://dejal.net/appcast/?prod=timeout&aed=direct&from=2037&rel=gen'
  name 'Time Out'
  homepage 'https://www.dejal.com/timeout/'

  app 'Time Out.app'
end
