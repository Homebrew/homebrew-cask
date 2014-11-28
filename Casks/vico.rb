cask :v1 => 'vico' do
  version 'r3132'
  sha256 'f5c82f320a1e3929492ecb30ba6b50d48af413b33b8e14dac06c75cd06cb809f'

  url "http://www.vicoapp.com/download/vico-#{version}.dmg"
  appcast 'http://www.vicoapp.com/appcast.xml',
          :sha256 => '7d2a33fb72c3c89b4e1f83c86e33fd5655651723e3b0de35a9e7cc90cca06445'
  homepage 'http://www.vicoapp.com'
  license :unknown

  app 'Vico.app'
  binary 'Vico.app/Contents/MacOS/vicotool', :target => 'vico'
end
