class Trailer < Cask
  version '1.1.2'
  sha256 'b3c19fa0f15176b1b4244a0572d9488618854de54889b5d40bbb36e73692b357'

  url "http://dev.housetrip.com/trailer/trailer#{version.gsub('.','')}.zip"
  appcast 'http://dev.housetrip.com/trailer/appcast.xml',
          :sha256 => 'e4f8d3bf70078922985b48e9f9b8f291c583b14a214abc6789d2467b8afc2957'
  homepage 'http://dev.housetrip.com/trailer/'
  license :mit

  app 'Trailer.app'
end
