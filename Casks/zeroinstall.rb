cask 'zeroinstall' do
  version '2.8'
  sha256 'ab0fbf7fc43c5ff6429d5686bde3ecef01c78894c46c8bd554c2f4a1f0e10e66'

  # sourceforge.net/zero-install was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/zero-install/0install/#{version}/ZeroInstall.pkg"
  appcast 'https://sourceforge.net/projects/zero-install/rss',
          checkpoint: 'f7bc0139c269f38d24518b35e7f00dad9367957c3ef09bd78b4fcfae518a609e'
  name 'Zero Install'
  homepage 'http://0install.net/'

  pkg 'ZeroInstall.pkg'

  uninstall pkgutil: 'net.0install.pkg'
end
