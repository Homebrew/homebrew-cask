cask :v1 => 'uncrustifyx' do
  version '0.4.3'
  sha256 '017c0781ce05db59c1a3fe52a140166df55aa2d87286a7cf5ba5e3eb6b06c7df'

  url "https://github.com/ryanmaxwell/UncrustifyX/releases/download/#{version}/UncrustifyX-#{version}.zip"
  appcast 'https://raw.github.com/ryanmaxwell/uncrustifyx/appcast/uncrustifyx-appcast.xml',
          :sha256 => 'b81877f4c038cccd6849ed1fa5f76e3a705d681165865a4238b43d034f028bba'
  homepage 'https://github.com/ryanmaxwell/UncrustifyX'
  license :mit

  app 'UncrustifyX.app'
end
