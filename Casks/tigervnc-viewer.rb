cask 'tigervnc-viewer' do
  version '1.9.0'
  sha256 '79b0728e7b62e9d93af9d5696c593aea3ddc8378c0f9326fae88f68435fca7c3'

  # bintray.com/tigervnc was verified as official when first introduced to the cask
  url "https://bintray.com/tigervnc/stable/download_file?file_path=tigervnc-#{version}.x86_64.tar.gz"
  appcast 'https://github.com/TigerVNC/tigervnc/releases.atom'
  name 'TigerVNC'
  homepage 'http://tigervnc.org/'

  app "TigerVNC Viewer #{version}.app"
end
