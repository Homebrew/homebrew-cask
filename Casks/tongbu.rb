cask :v1 => 'tongbu' do
  version '1.1.4'
  sha256 'b8c30ad109d1005fbcd865ceef67b8bb224595b8b40fc1e0b084d039e1d6ce50'

  url "http://qd.leaderhero.com/qd/zsmac/Tongbu_mac_v#{version}.dmg"
  homepage 'http://www.tongbu.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Tongbu.app'
end
