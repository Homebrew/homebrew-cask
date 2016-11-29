cask 'vpaint' do
  version '1.6'
  sha256 '7a762c78f48907346ac0c9320624910ed62e619d7db8678f2c46aac601209ce1'

  # github.com/dalboris/vpaint was verified as official when first introduced to the cask
  url "https://github.com/dalboris/vpaint/releases/download/v#{version}/VPaint.#{version}.dmg"
  appcast 'https://github.com/dalboris/vpaint/releases.atom',
          checkpoint: '1acbd6f7b3b66e2e10fe2cc38a8a2051cd6d198e4a3593bfa2dc74d081dc009d'
  name 'VPaint'
  homepage 'https://www.vpaint.org/'

  app 'vpaint.app'

  zap delete: '~/.config/vpaint'
end
