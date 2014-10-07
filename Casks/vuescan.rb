class Vuescan < Cask
  version '9.4.37'

  if Hardware::CPU.is_32_bit?
    sha256 '9f12d5a180a79c9d297913cdfb793382b512f25388de66f007cb621f4d69f461'
    url 'http://www.hamrick.com/files/vuex3294.dmg'
  else
    sha256 'a6e82863f7d6fc34400f678fb4de3cf5af6cbde9a20693ff4bfb5d95ad59f398'
    url 'http://www.hamrick.com/files/vuex6494.dmg'
  end

  homepage 'http://www.hamrick.com'
  license :unknown

  app 'VueScan.app'
end
