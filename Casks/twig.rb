cask 'twig' do
  version '0.0.4'
  sha256 '1fa2335dae41afe430febaa01f3b796c89b84a0d2316d3d54736060a4435a99e'

  url "https://github.com/lukakerr/twig/releases/download/#{version}/Twig-#{version}.zip"
  appcast 'https://github.com/lukakerr/twig/releases.atom'
  name 'Twig'
  homepage 'https://github.com/lukakerr/twig'

  app 'Twig.app'

  zap trash: '~/Library/Caches/io.github.lukakerr.twig'
end
