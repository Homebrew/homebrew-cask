cask 'topcat' do
  version '4.5-1'
  sha256 '1bb5059e0976163040e77616d0c83f0ab3f3790a5316be9c1290806dedcfebb0'

  url 'http://www.star.bris.ac.uk/~mbt/topcat/topcat-full.dmg'
  appcast 'http://www.star.bris.ac.uk/~mbt/topcat/sun253/versions.html',
          checkpoint: '9344d60557b168f25881cedf18157521a952b3925c5aa33ac6948a21fe1e8f53'
  name 'TOPCAT'
  homepage 'http://www.star.bris.ac.uk/~mbt/topcat/'

  app 'TOPCAT.app'
end
