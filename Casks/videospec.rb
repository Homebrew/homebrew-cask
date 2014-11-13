cask :v1 => 'videospec' do
  version '0.9.8'
  sha256 '3f1c0bee41512e1d728db693038c394fb2537ede64b79ece63fb7af6fa71676a'

  url "http://videospec.free.fr/VideoSpec_#{version}.dmg"
  appcast 'http://videospec.free.fr/release/videospec.xml',
          :sha256 => '29d625e7584d4fe8417998a37c25204d4aaa949c316da35c0c2b5b3626e9bd5b'
  homepage 'http://videospec.free.fr/english/'
  license :unknown

  app 'VideoSpec.app'
end
