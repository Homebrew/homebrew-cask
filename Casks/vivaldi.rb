cask :v1 => 'vivaldi' do
  version '1.0.83.38'
  sha256 'ef048f271526c53574f453dfdcac157482fc51e9f669c22aadaf1b25b5f952fa'

  url "http://vivaldi.com/download/Vivaldi_TP_#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis 

  app 'Vivaldi.app'
end
