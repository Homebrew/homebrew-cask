cask 'topcat' do
  version '4.6'
  sha256 '343da1a5ad080859a4dda671c059fb8cd33d83c68cee06128a48aa76fcb503de'

  url 'http://www.star.bris.ac.uk/~mbt/topcat/topcat-full.dmg'
  appcast 'http://www.star.bris.ac.uk/~mbt/topcat/sun253/versions.html',
          checkpoint: '48c09ca1e2fb4c0d5c6804fa220e936e1b2a66e14d61fd548bd9ecfb888a6942'
  name 'TOPCAT'
  homepage 'http://www.star.bris.ac.uk/~mbt/topcat/'

  app 'TOPCAT.app'
end
