cask 'wmail' do
  version '1.3.1'
  sha256 '2b8c14ed9b2616e1c32a33601293edc585e1fa0a1b16c1c07798ffdd590fbcfb'

  # github.com/Thomas101/wmail was verified as official when first introduced to the cask
  url "https://github.com/Thomas101/wmail/releases/download/v#{version}/WMail_#{version.dots_to_underscores}_osx.zip"
  appcast 'https://github.com/Thomas101/wmail/releases.atom',
          checkpoint: '88a65d3952c7868e1f5f5bdb974a2ac84dad1e55393a8751f170e95ae5d1ba1f'
  name 'WMail'
  homepage 'https://thomas101.github.io/wmail/'
  license :mit

  app 'WMail-darwin-x64/WMail.app'
end
