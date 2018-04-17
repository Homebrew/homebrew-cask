cask 'zeroinstall' do
  version '2.12.3'
  sha256 'ab0fbf7fc43c5ff6429d5686bde3ecef01c78894c46c8bd554c2f4a1f0e10e66'

  # sourceforge.net/zero-install was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/zero-install/0install/#{version}/ZeroInstall.pkg"
  appcast 'https://sourceforge.net/projects/zero-install/rss',
          checkpoint: 'aaa8811cf87665e543dafa79edbaa7e1d3ba6c3922e3ea3406db58d084a76ce4'
  name 'Zero Install'
  homepage 'http://0install.net/'

  pkg 'ZeroInstall.pkg'

  uninstall pkgutil: 'net.0install.pkg'
end
