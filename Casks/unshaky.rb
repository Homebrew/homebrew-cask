cask 'unshaky' do
  version '0.3.1'
  sha256 '471dc9fdb6613fe9fce5ba42327bbfb7ec4c29bf62a90740d91c16af52e7b521'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.app.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  depends_on macos: '>= :sierra'

  app 'Unshaky.app'
end
