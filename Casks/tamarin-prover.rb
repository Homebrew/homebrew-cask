cask 'tamarin-prover' do
  version '1.2.0'
  sha256 'f6178d6b3f7356d3c0d704339417bb413432f781f1ebf810e18ce32eed45ebda'

  # github.com/tamarin-prover/tamarin-prover was verified as official when first introduced to the cask
  url "https://github.com/tamarin-prover/tamarin-prover/releases/download/#{version}/tamarin-prover-#{version.major_minor}-macOS-x86_64.zip"
  appcast 'https://github.com/tamarin-prover/tamarin-prover/releases.atom',
          checkpoint: 'd53924084b55faacd8db4d3c65bbfbfc51583107708084b4e8189fb4ae4d9677'
  name 'tamarin-prover'
  homepage 'https://tamarin-prover.github.io/'

  depends_on macos: '>= :lion'
  depends_on formula: [
                        'homebrew/science/maude',
                        'graphviz',
                      ]

  binary "tamarin-prover-#{version.major_minor}-macOS-x86_64", target: 'tamarin-prover'
end
