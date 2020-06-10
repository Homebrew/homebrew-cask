cask 'tinderbox' do
  version '8.7.0'
  sha256 '0e17e762fc924790fbc549e128a562058af7da65407d5a891943acea0faa4499'

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  appcast 'https://eastgate.com/Tinderbox/download.html'
  name 'Tinderbox'
  homepage 'https://eastgate.com/Tinderbox/'

  app "Tinderbox #{version.major}.app"
end
