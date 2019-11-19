cask 'unlox' do
  version '3.0.3.0'
  sha256 'fe902c69b517c24714dabdb3fcbe68bfb8b86ee0e84e8ff9fb3eabd6f2c781a7'

  url 'https://unlox.it/download/'
  appcast 'https://unlox.it/download/update.php'
  name 'Unlox'
  homepage 'https://unlox.it/get'

  depends_on macos: '>= :high_sierra'

  app 'Unlox.app'
end
