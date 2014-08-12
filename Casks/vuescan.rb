class Vuescan < Cask
  if Hardware::CPU.is_32_bit?
    url 'http://www.hamrick.com/files/vuex3294.dmg'
    sha256 '9f12d5a180a79c9d297913cdfb793382b512f25388de66f007cb621f4d69f461'
  else
    url 'http://www.hamrick.com/files/vuex6494.dmg'
    sha256 'a6e82863f7d6fc34400f678fb4de3cf5af6cbde9a20693ff4bfb5d95ad59f398'
  end
  homepage 'http://www.hamrick.com'
  version '9.4.37'
  link 'VueScan.app'
end
