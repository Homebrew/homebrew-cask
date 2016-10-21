cask 'vimr' do
  version '0.9.0-112'
  sha256 '26009e10733df7d35f9685f22ad41b7d6766428726009e10733df7d35f9685f2'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '6c080a0de534efacbe71f6fbebc364f1167320ffd83638f87c7d60023da0a87a'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
