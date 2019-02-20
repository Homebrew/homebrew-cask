cask 'twig' do
  version '0.0.5'
  sha256 '74da83477d9d7f0217623a90d7247026b983f485cf9e97d5db807d90e34f35d4'

  url "https://github.com/lukakerr/twig/releases/download/#{version}/Twig-#{version}.zip"
  appcast 'https://github.com/lukakerr/twig/releases.atom'
  name 'Twig'
  homepage 'https://github.com/lukakerr/twig'

  depends_on macos: '>= :sierra'

  app 'Twig.app'

  zap trash: '~/Library/Caches/io.github.lukakerr.twig'
end
