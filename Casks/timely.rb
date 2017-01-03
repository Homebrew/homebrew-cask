cask 'timely' do
  version '0.4.1'
  sha256 'd021cb95b21ab526203bcf7073789011cc78e348c4bd6596b021e84da26d5518'

  # github.com/Timely was verified as official when first introduced to the cask
  url "https://github.com/Timely/desktop-releases/releases/download/osx64-v#{version}/Timely-#{version}.dmg"
  appcast 'https://github.com/Timely/desktop-releases/releases.atom',
          checkpoint: 'f431b778510451146b2eb1091ec4272b3da0c10c6e26a7aa3339cd39c7d0da0d'
  name 'Timely'
  homepage 'https://timelyapp.com/'

  app 'Timely.app'
end
