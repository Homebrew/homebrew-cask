cask 'typora' do
  version '0.9.9.8'
  sha256 'c5b60ad8286de08ed709fd126bdd49792dc0af6965735021926dfe03a1d52e25'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: 'd2fa56994eb57b35da0e3a3631ff2ea1e512995148ae268302ed274742f7180d'
  name 'Typora'
  homepage 'https://typora.io'
  license :gratis

  app 'Typora.app'
end
