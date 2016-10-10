cask 'tigervnc-viewer' do
  version '1.7.0'
  sha256 '00c04d83fdb159968bb8cd7869225197b029e9e5dec00d4f51db84a4829cfc60'

  # bintray.com/tigervnc was verified as official when first introduced to the cask
  url "https://bintray.com/tigervnc/stable/download_file?file_path=TigerVNC-#{version}.dmg"
  name 'TigerVNC'
  homepage 'http://tigervnc.org/'

  app "TigerVNC Viewer #{version}.app"
end
