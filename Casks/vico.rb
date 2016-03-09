cask 'vico' do
  version 'r3132'
  sha256 'f5c82f320a1e3929492ecb30ba6b50d48af413b33b8e14dac06c75cd06cb809f'

  url "http://www.vicoapp.com/download/vico-#{version}.dmg"
  appcast 'http://www.vicoapp.com/appcast.xml',
          checkpoint: 'b4ee7b48c746e73c1f75c20d4767e47997473ace4f14d32328962b2f4bbbf76a'
  name 'Vico'
  homepage 'http://www.vicoapp.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Vico.app'
  binary 'Vico.app/Contents/MacOS/vicotool', target: 'vico'
end
