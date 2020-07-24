cask 'weakauras-companion' do
  version '3.0.2'
  sha256 'd2ffad6365e08dd2edee22bf8ab5bae2597b3de7f8bf3296d99618204bb64191'

  # github.com/WeakAuras/WeakAuras-Companion was verified as official when first introduced to the cask
  url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}.dmg"
  appcast 'https://github.com/WeakAuras/WeakAuras-Companion/releases.atom'
  name 'WeakAuras Companion'
  homepage 'https://weakauras.wtf/'

  app 'WeakAuras Companion.app'
end
