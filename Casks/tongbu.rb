cask 'tongbu' do
  version '1.2.1.0'
  sha256 '1b5b0717424d8cef7a949f11f12f000b33a895b5f353ceb321247770a92e531b'

  # leaderhero.com is the official download host per the vendor homepage
  url "http://qd.appdown.info/qd/zsmacqd/Tongbu_mac_v#{version}_baidupinzhuan.dmg"
  name 'Tongbu'
  homepage 'http://www.tongbu.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tongbu.app'
end
