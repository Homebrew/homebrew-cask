class Vuescan < Cask
  version '9.4.49'

  if Hardware::CPU.is_32_bit?
    sha256 'ad85605fdde2f6bf3c7bfa6207e15af0b5a0b40acfc0b869a9bf2c5a24fbcc2d'
    url 'http://www.hamrick.com/files/vuex3294.dmg'
  else
    sha256 '0e87cdc0e8e6d26f57ed89046148d0ca8f0a561d4dc025e2240a6b2de4367475'
    url 'http://www.hamrick.com/files/vuex6494.dmg'
  end

  homepage 'http://www.hamrick.com'
  license :unknown

  app 'VueScan.app'
end
