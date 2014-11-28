cask :v1 => 'trailer' do
  version '1.1.5'
  sha256 'fac5b10d2613ef64a56a198e385a0d772ebd333386abca6efbc1c71481c02166'

  url "http://ptsochantaris.github.io/trailer/trailer#{version.gsub('.','')}.zip"
  appcast 'http://ptsochantaris.github.io/trailer/appcast.xml',
          :sha256 => 'eca7558a05e4984335438eb7fbb1e341a6ada3fb6217db0dfdb0a672701a9e89'
  homepage 'http://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
