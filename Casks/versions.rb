cask 'versions' do
  version '1.4.0-1126'
  sha256 '2012bbf92bba601e781fbd74a956fe2702f283c3c1017fa1735f3c3f96d2f73f'

  url "https://cdn.versionsapp.com/releases/Versions-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=vs',
          checkpoint: 'b30875c95642cb07ffebc209298634efbc34650d152a53c511dde8002abea32d'
  name 'Versions'
  homepage 'https://versionsapp.com/'

  app 'Versions.app'
end
