cask 'theine' do
  version '1.0.1'
  sha256 'ffba439b07e2c5119bfb1648eda753681385f84a7bb5be5316b492d7d075bbdd'

  url "https://github.com/lvillani/theine/releases/download/v#{version}/Theine-v#{version}.zip"
  appcast 'https://github.com/lvillani/theine/releases.atom',
          checkpoint: 'b45914107bffeb369f5fba2761135f9adede11e49ef0f7496f3a1e6bd1e5b8ea'
  name 'Theine'
  homepage 'https://github.com/lvillani/theine'
  license :mit

  app 'Theine.app'
end
