cask 'vnc-viewer' do
  version '5.3.0'
  sha256 '1995208a735bfc186efbf899755c56fc6f2f757832e66601c7d105dae5a2726b'

  url 'https://www.realvnc.com/download/binary/1797/'
  name 'Real VNC Viewer'
  homepage 'https://www.realvnc.com'
  license :freemium

  app 'VNC Viewer.app'
end
