cask 'xslimmer' do
  version '1.9.4'
  sha256 '3b496e1f51c10e48d6d0d4ac35f35f993a256044e8923936813363d5ef04b56a'

  url "http://latenitesoft.com/xslimmer/download/Xslimmer_#{version.to_f}.dmg"
  appcast 'http://www.xslimmer.com/releases.xml',
          :sha256 => 'f2c4b2c876647450cd27c337ed5ad65ab31d1d1875813f9ed66b6257bf5a5984'
  name 'Xslimmer'
  homepage 'https://latenitesoft.com/xslimmer/'
  license :commercial

  app 'Xslimmer.app'
end
