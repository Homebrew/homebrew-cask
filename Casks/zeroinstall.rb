cask 'zeroinstall' do
  version '2.8'
  sha256 'ab0fbf7fc43c5ff6429d5686bde3ecef01c78894c46c8bd554c2f4a1f0e10e66'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/zero-install/0install/#{version}/ZeroInstall.pkg"
  name 'Zero Install'
  homepage 'http://0install.net'
  license :gpl

  pkg 'ZeroInstall.pkg'

  uninstall pkgutil: 'net.0install.pkg'
end
