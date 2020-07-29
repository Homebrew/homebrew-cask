cask 'xaos' do
  version '4.0'
  sha256 'b546012110d508af24113c52449f507d716823f0c25fd29d5a7cd38113b25d58'

  # github.com/xaos-project/XaoS/ was verified as official when first introduced to the cask
  url "https://github.com/xaos-project/XaoS/releases/download/release-#{version}/XaoS-#{version}.dmg"
  appcast 'https://github.com/xaos-project/XaoS/releases.atom'
  name 'GNU XaoS'
  homepage 'https://xaos-project.github.io/'

  app 'XaoS.app'
end
