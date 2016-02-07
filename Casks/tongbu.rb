cask 'tongbu' do
  version '1.1.7'
  sha256 'e9ff364db18915318367bc8ba359f963ce9c274bb9e27be10f2ce87192ac8a68'

  # leaderhero.com is the official download host per the vendor homepage
  url "http://qd.appdown.info/qd/zsmacqd/Tongbu_mac_v#{version}_baidupinzhuan.dmg"
  name 'Tongbu'
  homepage 'http://www.tongbu.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tongbu.app'
end
