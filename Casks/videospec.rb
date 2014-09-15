class Videospec < Cask
  version '0.9.8'
  sha256 '3f1c0bee41512e1d728db693038c394fb2537ede64b79ece63fb7af6fa71676a'

  url 'http://videospec.free.fr/VideoSpec_0.9.8.dmg'
  appcast 'http://videospec.free.fr/release/videospec.xml'
  homepage 'http://videospec.free.fr/english/'

  app 'VideoSpec.app'
end
