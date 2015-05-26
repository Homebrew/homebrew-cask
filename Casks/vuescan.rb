cask :v1 => 'vuescan' do
  version '9.5.08'

  if Hardware::CPU.is_32_bit?
    sha256 'ca343dca3a4c08f90dffe4bf5a3b38e8033d472e73ad160c8ac0fe8bdc1139c6'
    url "http://www.hamrick.com/files/vuex32#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}.dmg"
  else
    sha256 '4912e5c0fe45dffef0ae70fca9b7386639d6dfb958934a97d3e194813aee7b2d'
    url "http://www.hamrick.com/files/vuex64#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}.dmg"
  end

  name 'VueScan'
  homepage 'http://www.hamrick.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'VueScan.app'
end
