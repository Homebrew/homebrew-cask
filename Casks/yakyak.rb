cask 'yakyak' do
  version '1.4.1'
  sha256 '8a65fbb2b15d9805341571a2d7aed60f68e2839932b77706fb6363b9bfc1c5e9'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: 'e6b4c60c3e7bc88c55862e05282c35444e42e003d2e912372fb6d0ff3e69685a'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'yakyak-darwin-x64/Yakyak.app'
end
