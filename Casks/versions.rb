cask 'versions' do
  version '1.3.3-1069'
  sha256 'a8e281f2d0b3981a2af36a518aa6d1122c6cdfedd6c258505ca9c6a35c14a573'

  url "https://cdn.versionsapp.com/releases/Versions-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=vs',
          checkpoint: 'c21288f5920256d3fe7fa74bd9bc18163631ba4a1551e5a5ce237a2df1b93fcf'
  name 'Versions'
  homepage 'http://versionsapp.com/'

  app 'Versions.app'
end
