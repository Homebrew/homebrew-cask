cask 'thonny' do
  version '3.2.7'
  sha256 'f70a3dc2321e2ab0abf433900a5a36c231d1cccdd1e4aba48c400926f34d3c2b'

  # github.com/thonny/thonny was verified as official when first introduced to the cask
  url "https://github.com/thonny/thonny/releases/download/v#{version}/thonny-#{version}.pkg"
  appcast 'https://github.com/thonny/thonny/releases.atom'
  name 'Thonny'
  homepage 'https://thonny.org/'

  conflicts_with cask: 'thonny-xxl'

  pkg "thonny-#{version}.pkg"

  uninstall quit:    'Thonny',
            pkgutil: 'org.thonny.Thonny.component',
            delete:  '/Applications/Thonny.app'

  zap trash: [
               '~/Library/Saved Application State/org.thonny.Thonny.savedState',
               '~/Library/Thonny',
             ]
end
