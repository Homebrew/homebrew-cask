cask 'tamarin-prover' do
  version '1.2.1'
  sha256 'f8f2eb5ba1fc7ff1f3ed6db0dc4063c291f03c5dace442f0fb896ed5f783f80e'

  # github.com/tamarin-prover/tamarin-prover was verified as official when first introduced to the cask
  url "https://github.com/tamarin-prover/tamarin-prover/releases/download/#{version}/tamarin-prover-#{version.major_minor}-macOS-x86_64.zip"
  appcast 'https://github.com/tamarin-prover/tamarin-prover/releases.atom',
          checkpoint: '8c17c539bdbd3fef91799b534be0dc5b2075d604dcb579be603d6c8dbfa40c4d'
  name 'tamarin-prover'
  homepage 'https://tamarin-prover.github.io/'

  depends_on macos: '>= :lion'
  depends_on formula: [
                        'homebrew/science/maude',
                        'graphviz',
                      ]

  binary "tamarin-prover-#{version.major_minor}-macOS-x86_64", target: 'tamarin-prover'
end
