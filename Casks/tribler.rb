cask 'tribler' do
  version '7.0.1'
  sha256 '320e2d587cc9f4eb357f9e662e5a31fbadec55ea3f36f2868b32b785d2bb30a9'

  # github.com/Tribler/tribler was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom',
          checkpoint: '4852b66079146e43ba608a52718694670a60e3862df10ef2cec129097b65ca4d'
  name 'Tribler'
  homepage 'https://www.tribler.org/'

  app 'Tribler.app'
end
