cask 'visualvm' do
  version '1.4.1'
  sha256 '32a6210c6c1d1e96d795f1731b73c93c0b44b1b04a551474088c84b25790fd2a'

  # github.com/oracle/visualvm was verified as official when first introduced to the cask
  url "https://github.com/oracle/visualvm/releases/download/#{version}/VisualVM_#{version.no_dots}.dmg"
  appcast 'https://github.com/oracle/visualvm/releases.atom',
          checkpoint: '8010c4333f1c933955bc4c971ccdbd77208309f0a01603993ed4bc4438525df3'
  name 'VisualVM'
  homepage 'https://visualvm.github.io/'

  app 'VisualVM.app'

  caveats do
    depends_on_java
  end
end
