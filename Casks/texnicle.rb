cask 'texnicle' do
  version '2.2.15'
  sha256 '754b5ed5e93a11a8bd39adbabd0285d4d61844dd21992a5986ee1fd2bdfcd904'

  url "http://www.bobsoft-mac.de/resources/TeXnicle/#{version.major_minor}/TeXnicle.app.#{version}.zip"
  appcast 'http://www.bobsoft-mac.de/profileInfo.php',
          :checkpoint => 'ed82c00f4844d5e10b602664cc69da23d6ee9aa0ceac8a12cdc3fd3b8579445e'
  name 'TeXnicle'
  homepage 'http://www.bobsoft-mac.de/texnicle/texnicle.html'
  license :gratis

  app 'TeXnicle.app'
end
