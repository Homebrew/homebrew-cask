cask 'topcat' do
  version '4.4'
  sha256 '60ac8689ff1aa0edce445a39d558946a8bfb2779e5d222550ad36c300bfb4560'

  url 'http://www.star.bris.ac.uk/~mbt/topcat/topcat-full.dmg'
  appcast 'http://www.star.bris.ac.uk/~mbt/topcat/sun253/versions.html',
          checkpoint: '5362ae0181d5c42defdd127047ebf31b56d15c4575cbf67bd090dcca59d20848'
  name 'TOPCAT'
  homepage 'http://www.star.bris.ac.uk/~mbt/topcat/'

  app 'TOPCAT.app'
end
