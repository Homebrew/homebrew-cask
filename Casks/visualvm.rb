cask 'visualvm' do
  version '1.4'
  sha256 '5515d7763aed38c87b567ca338a9c5042ca4a554e7312b15fd1e046dae997c26'

  # github.com/oracle/visualvm was verified as official when first introduced to the cask
  url "https://github.com/oracle/visualvm/releases/download/#{version}/VisualVM_#{version.no_dots}.dmg"
  appcast 'https://github.com/oracle/visualvm/releases.atom',
          checkpoint: '402f0872372c908173b23aefbf9b83fc748e6ae3c88e77f37cec641c63926b55'
  name 'VisualVM'
  homepage 'https://visualvm.github.io/'

  app 'VisualVM.app'

  caveats do
    depends_on_java
  end
end
