cask 'vnc-viewer' do
  version '5.3.1'
  sha256 '7136cfda0fd232c008a2df58f496c1acdd74ff9ef1cfbd580e63e72d4d5b1a4c'

  url 'https://www.realvnc.com/download/binary/1863/'
  name 'Real VNC Viewer'
  homepage 'https://www.realvnc.com'
  license :freemium

  app 'VNC Viewer.app'
end
