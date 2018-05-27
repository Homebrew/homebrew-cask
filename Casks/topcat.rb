cask 'topcat' do
  version '4.6-1'
  sha256 'd26dcdec120d1498a4d97140396b93dd1ea7738364fcfa959e66a9e3201cadf2'

  url 'http://www.star.bris.ac.uk/~mbt/topcat/topcat-full.dmg'
  appcast 'http://www.star.bris.ac.uk/~mbt/topcat/sun253/versions.html',
          checkpoint: '4705495334d6bdb7df6633ae2e60becaadd8aa0e9de266c74691dc1f1a3add73'
  name 'TOPCAT'
  homepage 'http://www.star.bris.ac.uk/~mbt/topcat/'

  app 'TOPCAT.app'
end
