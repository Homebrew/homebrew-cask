cask 'twig' do
  version '0.0.4'
  sha256 '1fa2335dae41afe430febaa01f3b796c89b84a0d2316d3d54736060a4435a99e'

  url "https://github.com/lukakerr/twig/releases/download/#{version}/Twig-#{version}.zip"
  appcast 'https://github.com/lukakerr/twig/releases.atom',
          checkpoint: '2abf673cf4461730e000dda9eda31162a7497d27f55048bf2a6e78de130c749f'
  name 'Twig'
  homepage 'https://github.com/lukakerr/twig'

  app 'Twig.app'

  zap trash: '~/Library/Caches/io.github.lukakerr.twig'
end
