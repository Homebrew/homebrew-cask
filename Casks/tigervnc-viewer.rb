cask 'tigervnc-viewer' do
  version '1.10.1'
  sha256 'f5a93899ef81194ca279f722c03eb56478b5d80070810174268e9733acb3e320'

  # bintray.com/tigervnc was verified as official when first introduced to the cask
  url "https://bintray.com/tigervnc/stable/download_file?file_path=TigerVNC-#{version}.dmg"
  appcast 'https://github.com/TigerVNC/tigervnc/releases.atom'
  name 'TigerVNC'
  homepage 'https://tigervnc.org/'

  app "TigerVNC Viewer #{version}.app"
end
