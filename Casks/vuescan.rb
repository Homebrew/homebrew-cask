cask :v1 => 'vuescan' do
  version '9.5.07'

  if Hardware::CPU.is_32_bit?
    sha256 '1a81b4816dcfc828befd754475714df05a6f4daeaa7eb1734a6030261b8a6294'
    url "http://www.hamrick.com/files/vuex32#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}.dmg"
  else
    sha256 '010c398c471468b358689f6e6562b83bdf5cfacb10ab021c18fa780bb76b50b1'
    url "http://www.hamrick.com/files/vuex64#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}.dmg"
  end

  name 'VueScan'
  homepage 'http://www.hamrick.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'VueScan.app'
end
