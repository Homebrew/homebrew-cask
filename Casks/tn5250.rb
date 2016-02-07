cask 'tn5250' do
  version :latest
  sha256 :no_check

  url 'http://mochasoft.dk/tn5250.dmg.zip'
  name 'TN5250'
  homepage 'http://mochasoft.dk'
  license :commercial

  container nested: 'tn5250.dmg'

  app 'tn5250.app'
end
