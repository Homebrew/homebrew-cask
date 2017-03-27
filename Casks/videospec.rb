cask 'videospec' do
  version '0.9.8'
  sha256 '3f1c0bee41512e1d728db693038c394fb2537ede64b79ece63fb7af6fa71676a'

  url "http://videospec.free.fr/VideoSpec_#{version}.dmg"
  appcast 'http://videospec.free.fr/release/videospec.xml',
          checkpoint: '969de5d87756138149c66228ca76911fa49b1c86f5fa5801cf7cee6bbd16c938'
  name 'VideoSpec'
  homepage 'http://videospec.free.fr/english/'

  app 'VideoSpec.app'
end
