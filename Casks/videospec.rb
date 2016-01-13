cask 'videospec' do
  version '0.9.8'
  sha256 '3f1c0bee41512e1d728db693038c394fb2537ede64b79ece63fb7af6fa71676a'

  url "http://videospec.free.fr/VideoSpec_#{version}.dmg"
  appcast 'http://videospec.free.fr/release/videospec.xml',
          :checkpoint => '921ba1c98354d094d0c76efbca5ae10df6a8e963e61d5f871ce510568d2326c2'
  name 'VideoSpec'
  homepage 'http://videospec.free.fr/english/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'VideoSpec.app'
end
