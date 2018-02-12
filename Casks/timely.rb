cask 'timely' do
  version '0.4.8'
  sha256 '2184d8ed6e951e2cf1d5da22626740c8825d2bfea4fd9f7b83e771d219e86622'

  # github.com/Timely was verified as official when first introduced to the cask
  url "https://github.com/Timely/desktop-releases/releases/download/osx64-v#{version}/Timely-#{version}.dmg"
  appcast 'https://github.com/Timely/desktop-releases/releases.atom',
          checkpoint: 'aff78e8f2a95417fc33a88004d49b3dad213a2dfc72bdbe3e0d18177bc3fed6e'
  name 'Timely'
  homepage 'https://timelyapp.com/'

  app 'Timely.app'
end
