cask 'versions' do
  version '1.3.3-1069'
  sha256 'a8e281f2d0b3981a2af36a518aa6d1122c6cdfedd6c258505ca9c6a35c14a573'

  url "http://cdn.versionsapp.com/releases/Versions-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=vs',
          checkpoint: '2ed6c00361f6f454c263250fd3a2ef34d7534ea15895fb65742cf2683ead995e'
  name 'Versions'
  homepage 'http://versionsapp.com/'
  license :commercial

  app 'Versions.app'
end
