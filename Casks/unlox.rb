cask 'unlox' do
  version '3.0.2.0'
  sha256 '2a19e38a9d10211c905c25cf8c6f270c87a3e942c7888c82820d654f4b956a7a'

  url 'https://unlox.it/download/'
  appcast 'https://unlox.it/download/update.php'
  name 'Unlox'
  homepage 'https://unlox.it/get'

  depends_on macos: '>= :high_sierra'

  app 'Unlox.app'
end
