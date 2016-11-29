cask 'texnicle' do
  version '2.2.15'
  sha256 '754b5ed5e93a11a8bd39adbabd0285d4d61844dd21992a5986ee1fd2bdfcd904'

  url "http://www.bobsoft-mac.de/resources/TeXnicle/#{version.major_minor}/TeXnicle.app.#{version}.zip"
  appcast 'http://www.bobsoft-mac.de/profileInfo.php',
          checkpoint: '1d8e0e6d597e2aa6fd52ad15c3f5ff7c7420a447340e60dab126044f39b9864e'
  name 'TeXnicle'
  homepage 'http://www.bobsoft-mac.de/texnicle/texnicle.html'

  app 'TeXnicle.app'
end
