cask 'thonny-xxl' do
  version '3.2.7'
  sha256 '748fb7893b3c4ab63291a6ea88ea2aa054f8a4591cbfac56878a5550b663d887'

  # github.com/thonny/thonny was verified as official when first introduced to the cask
  url "https://github.com/thonny/thonny/releases/download/v#{version}/thonny-xxl-#{version}.pkg"
  appcast 'https://github.com/thonny/thonny/releases.atom'
  name 'Thonny (XXL bundle)'
  homepage 'https://thonny.org/'

  conflicts_with cask: 'thonny'

  pkg "thonny-xxl-#{version}.pkg"

  uninstall quit:    'Thonny',
            pkgutil: 'org.thonny.Thonny.component',
            delete:  '/Applications/Thonny.app'

  zap trash: [
               '~/Library/Saved Application State/org.thonny.Thonny.savedState',
               '~/Library/Thonny',
             ]
end
