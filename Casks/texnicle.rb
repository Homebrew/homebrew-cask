cask 'texnicle' do
  version '2.3.0'
  sha256 '4909f36a7e741c68fa5104209f860b61594327ba751a5c8c5007ea690fd4b91f'

  url "http://www.bobsoft-mac.de/resources/TeXnicle/#{version.major_minor}/TeXnicle.app.#{version}.zip"
  appcast 'http://www.bobsoft-mac.de/profileInfo.php'
  name 'TeXnicle'
  homepage 'http://www.bobsoft-mac.de/texnicle/texnicle.html'

  app 'TeXnicle.app'
end
