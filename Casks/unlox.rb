cask 'unlox' do
  version '3.0.0.5'
  sha256 '9e0c64512a11595de12548eb48b9a2b805770d124ac29c8e10798cc213180df0'

  url 'https://unlox.it/download/'
  appcast 'https://unlox.it/download/update.php'
  name 'Unlox'
  homepage 'https://unlox.it/get'

  depends_on macos: '>= :high_sierra'

  app 'Unlox.app'
end
