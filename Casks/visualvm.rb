cask 'visualvm' do
  version '2.0.2'
  sha256 '20e91893a4f19a1e69b8b0e545935db75674dfd6282861f3a1206dc2689e16c8'

  # github.com/oracle/visualvm/ was verified as official when first introduced to the cask
  url "https://github.com/oracle/visualvm/releases/download/#{version}/VisualVM_#{version.no_dots}.dmg"
  appcast 'https://github.com/oracle/visualvm/releases.atom'
  name 'VisualVM'
  homepage 'https://visualvm.github.io/'

  app 'VisualVM.app'

  caveats do
    depends_on_java
  end
end
