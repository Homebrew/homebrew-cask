class Volatility < Cask
  version '2.4'
  sha256 '528f06cfd9f0562f7a437c7f1db0d1f54650c3fe9969974718794fd737fbff6d'

  url 'http://downloads.volatilityfoundation.org/releases/2.4/volatility_2.4.mac.standalone.zip'
  homepage 'http://www.volatilityfoundation.org/'

  if Hardware::CPU.is_32_bit?
    binary 'volatility_2.4.mac.standalone/volatility_2.4_x86', :target => 'volatility'
  else
    binary 'volatility_2.4.mac.standalone/volatility_2.4_x64', :target => 'volatility'
  end
end
