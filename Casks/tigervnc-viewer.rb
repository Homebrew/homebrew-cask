cask 'tigervnc-viewer' do
  version '1.7.0'
  sha256 '00c04d83fdb159968bb8cd7869225197b029e9e5dec00d4f51db84a4829cfc60'

  # bintray.com/tigervnc was verified as official when first introduced to the cask
  url "https://bintray.com/tigervnc/stable/download_file?file_path=TigerVNC-#{version}.dmg"
  appcast 'https://github.com/TigerVNC/tigervnc/releases.atom',
          checkpoint: '9a34d5ffb8a56e0fe4bb6101594b70775ca1749ce9ae03523c8a29cf2303bbac'
  name 'TigerVNC'
  homepage 'http://tigervnc.org/'

  app "TigerVNC Viewer #{version}.app"
end
