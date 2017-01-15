cask 'timely' do
  version '0.4.4'
  sha256 '284c0171ba10dd62bd0e5ac447dfca35727a452eca998f350d04ea252c672290'

  # github.com/Timely was verified as official when first introduced to the cask
  url "https://github.com/Timely/desktop-releases/releases/download/osx64-v#{version}/Timely-#{version}.dmg"
  appcast 'https://github.com/Timely/desktop-releases/releases.atom',
          checkpoint: 'f50a2ff2f33ca35f1410975a6fdfba93546f7541d7a6ec8d5eb668c777242f02'
  name 'Timely'
  homepage 'https://timelyapp.com/'

  app 'Timely.app'
end
