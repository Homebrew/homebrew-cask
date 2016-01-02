cask 'xslimmer' do
  version '1.9.4'
  sha256 '3b496e1f51c10e48d6d0d4ac35f35f993a256044e8923936813363d5ef04b56a'

  url "http://latenitesoft.com/xslimmer/download/Xslimmer_#{version.to_f}.dmg"
  appcast 'http://www.xslimmer.com/releases.xml',
          :sha256 => '7f27ccf84109291c59781abe74950f67d53cdb89365497c2925a5d1106f3a15a'
  name 'Xslimmer'
  homepage 'https://latenitesoft.com/xslimmer/'
  license :commercial

  app 'Xslimmer.app'
end
