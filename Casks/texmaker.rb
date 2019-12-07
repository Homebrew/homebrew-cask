cask 'texmaker' do
  version '5.0.3'
  sha256 '024e9c3ad09743b6914e2a1bfed0fceb5eb8000d8f7f78360d02884299d526ca'

  url "https://www.xm1math.net/texmaker/assets/files/texmaker-#{version}.dmg"
  appcast 'https://www.xm1math.net/texmaker/assets/files/'
  name 'Texmaker'
  homepage 'https://www.xm1math.net/texmaker/'

  app 'texmaker.app'
end
