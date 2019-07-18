cask 'unlox-beta' do
  version '3.0.0.2'
  sha256 'e0fb5f35b12d1bcfd553a63fdf5b2a4e85d910311a5f0ffa13538f41d7ba1da0'

  url 'https://unlox.it/beta/download/'
  appcast 'https://unlox.it/beta/update.php'
  name 'Unlox-Beta'
  homepage 'https://unlox.it/get'

  depends_on macos: '>= :mojave'

  app 'Unlox.app'
end
