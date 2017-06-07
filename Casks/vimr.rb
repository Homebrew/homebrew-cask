cask 'vimr' do
  version '0.15.1-199'
  sha256 '7b1b516f24441687df769e827bc833c12346f9e213b535c17511bb69e5123768'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: 'b10e8afdfbd4777500ac0f50e7846dca9a79fac6d53592c2658e85ae746bfae9'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
