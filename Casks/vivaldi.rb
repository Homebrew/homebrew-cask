cask :v1 => 'vivaldi' do
  version '1.0.83.38'
  sha256 'ef048f271526c53574f453dfdcac157482fc51e9f669c22aadaf1b25b5f952fa'

  url "https://vivaldi.com/download/Vivaldi_TP_#{version}.dmg"
  homepage 'http://www.play0ad.com/'
  license :unknown

  app 'Vivaldi.app'
end
