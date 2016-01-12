cask 'vico' do
  version 'r3132'
  sha256 'f5c82f320a1e3929492ecb30ba6b50d48af413b33b8e14dac06c75cd06cb809f'

  url "http://www.vicoapp.com/download/vico-#{version}.dmg"
  appcast 'http://www.vicoapp.com/appcast.xml',
          :sha256 => '9937f05603bc5f4d94a6563a6e8f9ff16e93b12e05375588cc0f0f49571d53b0'
  name 'Vico'
  homepage 'http://www.vicoapp.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Vico.app'
  binary 'Vico.app/Contents/MacOS/vicotool', :target => 'vico'
end
