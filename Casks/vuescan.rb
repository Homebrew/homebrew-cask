cask 'vuescan' do
  version '9.5.41'
  sha256 :no_check # required as upstream package is updated in-place

  if Hardware::CPU.is_32_bit?
    url "https://www.hamrick.com/files/vuex32#{version.sub(%r{^(\d+)\.(\d+).*}, '\1\2')}.dmg"
  else
    url "https://www.hamrick.com/files/vuex64#{version.sub(%r{^(\d+)\.(\d+).*}, '\1\2')}.dmg"
  end

  name 'VueScan'
  homepage 'https://www.hamrick.com/'
  license :commercial

  app 'VueScan.app'
end
