cask 'touch-unlock' do
  version '1.0.7'
  sha256 '34ab779b6532928520118b28f72168d7095a3b4fc870c886755b307d45a5731f'

  url "https://releases.touchunlock.com/packages/Touch%20Unlock%20for%20Mac%20-%20v#{version}.dmg"
  name 'Touch Unlock for Mac'
  homepage 'https://touchunlock.com'
  license :gratis

  app 'Touch Unlock for Mac.app'

  zap delete: [
                '~/Library/Caches/com.reconditorium.Touch-Unlock-for-Mac',
              ]
end
