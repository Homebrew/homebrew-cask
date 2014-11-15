cask :v1 => 'texnicle' do
  version '2.2.11'
  sha256 'b522e551220bfc98ff3d3c09db224c0db2a31c1dff4c73353a26d1f13217733b'

  url "http://www.bobsoft-mac.de/resources/TeXnicle/2.2/TeXnicle.app.#{version}.zip"
  appcast 'http://www.bobsoft-mac.de/profileInfo.php',
          :sha256 => '700cebec51784f2e6088d51c6ac79a8dbd9a6863415a7806ce7cfed57b2f6e43'
  homepage 'http://www.bobsoft-mac.de/texnicle/texnicle.html'
  license :unknown

  app 'TeXnicle.app'
end
