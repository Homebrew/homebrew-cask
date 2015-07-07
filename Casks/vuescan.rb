cask :v1 => 'vuescan' do
  version '9.5.18'
  sha256 :no_check # required as upstream package is updated in-place

  if Hardware::CPU.is_32_bit?
    url "http://www.hamrick.com/files/vuex32#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}.dmg"
  else
    url "http://www.hamrick.com/files/vuex64#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}.dmg"
  end

  name 'VueScan'
  homepage 'http://www.hamrick.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'VueScan.app'
end
