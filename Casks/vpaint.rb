cask 'vpaint' do
  version '1.6'
  sha256 '7a762c78f48907346ac0c9320624910ed62e619d7db8678f2c46aac601209ce1'

  # github.com/dalboris/vpaint was verified as official when first introduced to the cask
  url "https://github.com/dalboris/vpaint/releases/download/v#{version}/VPaint.#{version}.dmg"
  appcast 'https://github.com/dalboris/vpaint/releases.atom',
          checkpoint: '4461c8f006a056c4f5e9211d54eb384cf317e7c7fd5c3d9ae835dc148d5fc802'
  name 'VPaint'
  homepage 'https://www.vpaint.org/'

  app 'vpaint.app'

  zap delete: '~/.config/vpaint'
end
