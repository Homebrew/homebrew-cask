cask 'vpaint' do
  version '1.5'
  sha256 '3ebadd7518698cf83ce7cbf7d0736599ffc385bb4c00587fa1e957905b3050af'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/dalboris/vpaint/releases/download/v#{version}/vpaint.dmg"
  appcast 'https://github.com/dalboris/vpaint/releases.atom',
          checkpoint: 'dcd653d5abc5f951abd9b9c1dd7bd72a26a27e5b057b1d392272942fab442d0b'
  name 'VPaint'
  homepage 'http://www.vpaint.org/'
  license :mit

  app 'vpaint.app'

  zap delete: '~/.config/vpaint'
end
