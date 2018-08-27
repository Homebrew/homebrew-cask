cask 'understand' do
  version '5.0.955'
  sha256 'ecc2d19595ed0293f69a98c555aa5a0f24036702836477efbe888b0b63468f55'

  url "http://latest.scitools.com/Understand/Understand-#{version}-MacOSX-x86.dmg"
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
