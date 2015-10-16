cask :v1 => 'theine' do
  version '1.0.1'
  sha256 'ffba439b07e2c5119bfb1648eda753681385f84a7bb5be5316b492d7d075bbdd'

  url "https://github.com/lvillani/theine/releases/download/v#{version}/Theine-v#{version}.zip"
  appcast 'https://github.com/lvillani/theine/releases.atom'
  name 'Theine'
  homepage 'https://github.com/lvillani/theine'
  license :mit

  app 'Theine.app'
end
