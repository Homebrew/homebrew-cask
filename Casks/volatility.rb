cask 'volatility' do
  version '2.4'
  sha256 '528f06cfd9f0562f7a437c7f1db0d1f54650c3fe9969974718794fd737fbff6d'

  url "http://downloads.volatilityfoundation.org/releases/#{version}/volatility_#{version}.mac.standalone.zip"
  name 'Volatility'
  homepage 'http://www.volatilityfoundation.org/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  if Hardware::CPU.is_32_bit?
    binary "volatility_#{version}.mac.standalone/volatility_#{version}_x86", target: 'volatility'
  else
    binary "volatility_#{version}.mac.standalone/volatility_#{version}_x64", target: 'volatility'
  end
end
