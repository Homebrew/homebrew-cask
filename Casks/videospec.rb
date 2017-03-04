cask 'videospec' do
  version '0.9.8'
  sha256 '3f1c0bee41512e1d728db693038c394fb2537ede64b79ece63fb7af6fa71676a'

  url "http://videospec.free.fr/VideoSpec_#{version}.dmg"
  appcast 'http://videospec.free.fr/release/videospec.xml',
          checkpoint: '17195c9c14a1c6d71726f764d54fa534b23e642492a64100186b2540fe331bed'
  name 'VideoSpec'
  homepage 'http://videospec.free.fr/english/'

  app 'VideoSpec.app'
end
