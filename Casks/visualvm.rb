cask 'visualvm' do
  version '2.0.1'
  sha256 '59a72c18c655fb0874930962ea4588857cc55bc458069371f6d76cb41f1d6b0e'

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
