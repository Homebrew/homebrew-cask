cask :v1 => 'vuescan' do
  version '9.4.51'

  if Hardware::CPU.is_32_bit?
    sha256 'a5d371974e895cf37555d4616afd0d08949ab1e5ce57dc4cc6d00b5cef64e15b'
    url 'http://www.hamrick.com/files/vuex3294.dmg'
  else
    sha256 'be0300ff6de7ea83a0453021237e643c80b21264ebc881992028942637bc4fab'
    url 'http://www.hamrick.com/files/vuex6494.dmg'
  end

  homepage 'http://www.hamrick.com'
  license :unknown

  app 'VueScan.app'
end
