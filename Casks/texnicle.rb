cask 'texnicle' do
  version '2.2.15'
  sha256 '754b5ed5e93a11a8bd39adbabd0285d4d61844dd21992a5986ee1fd2bdfcd904'

  url "http://www.bobsoft-mac.de/resources/TeXnicle/#{version.major_minor}/TeXnicle.app.#{version}.zip"
  appcast 'http://www.bobsoft-mac.de/profileInfo.php',
          :sha256 => '1e683d5d82758e72e3287873d4a0a164dffe1c89a3ddfbd0c76c1c4b2d0da848'
  name 'TeXnicle'
  homepage 'http://www.bobsoft-mac.de/texnicle/texnicle.html'
  license :gratis

  app 'TeXnicle.app'
end
