cask :v1 => 'visualvm' do
  version '1.3.8'
  sha256 'dae23a7625f543f14f86f846e590dae308df4c27dd64eda4ab8d85b9078e35bd'

  url "https://java.net/downloads/visualvm/release138/VisualVM_#{version.delete('.')}.dmg"
  name 'VisualVM'
  homepage 'http://visualvm.java.net'
  license :gpl

  app 'VisualVM.app'
end
