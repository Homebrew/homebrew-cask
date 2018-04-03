cask 'versions' do
  version '1.4.1-1144'
  sha256 '84d4320883b97140b920f3bf4fa95285cb4ecfc9a13c58ef346288f5d37db208'

  url "https://cdn.versionsapp.com/releases/Versions-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=vs',
          checkpoint: '12dc188d68288f0b003c64bca71de5fb8a44695813fe4c8493b0d2b809b8a2cb'
  name 'Versions'
  homepage 'https://versionsapp.com/'

  app 'Versions.app'
end
