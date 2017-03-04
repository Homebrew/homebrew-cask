cask 'tamarin-prover' do
  version '1.2.1'
  sha256 'ab8719d7743dd0e2d3a99bd7233ea4f5fda985c15ed51498115bff1c90652d2c'

  # github.com/tamarin-prover/tamarin-prover was verified as official when first introduced to the cask
  url "https://github.com/tamarin-prover/tamarin-prover/releases/download/#{version}/tamarin-prover-#{version}-macOS-x86_64.zip"
  appcast 'https://github.com/tamarin-prover/tamarin-prover/releases.atom',
          checkpoint: '8c17c539bdbd3fef91799b534be0dc5b2075d604dcb579be603d6c8dbfa40c4d'
  name 'tamarin-prover'
  homepage 'https://tamarin-prover.github.io/'

  depends_on macos: '>= :lion'
  depends_on formula: [
                        'homebrew/science/maude',
                        'graphviz',
                      ]

  binary 'tamarin-prover'
end
