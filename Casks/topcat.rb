cask 'topcat' do
  version '4.3-5'
  sha256 'd12eeb912382151e5a18da8717f4f4994d72a2b4163bafeb81b3adb6306f69ad'

  url 'http://www.star.bris.ac.uk/~mbt/topcat/topcat-full.dmg'
  appcast 'http://www.star.bris.ac.uk/~mbt/topcat/sun253/versions.html',
          checkpoint: '3bd585b40aa92f5db0b870c57ba8ebb3de7588b8692e8eef645e10dfb77ad959'
  name 'TOPCAT'
  homepage 'http://www.star.bris.ac.uk/~mbt/topcat/'

  app 'TOPCAT.app'
end
