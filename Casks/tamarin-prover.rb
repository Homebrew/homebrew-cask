cask 'tamarin-prover' do
  version '1.0.0'
  sha256 '0e606088f1204847e4a981f2519c6e13c27778751f81d1c99a8f3f2d42eb3ff8'

  # github.com/tamarin-prover/bin-dists was verified as official when first introduced to the cask
  url 'https://github.com/tamarin-prover/bin-dists/archive/master.zip'
  name 'tamarin-prover'
  homepage 'https://tamarin-prover.github.io/'

  depends_on macos: '>= :lion'
  depends_on formula: ['homebrew/science/maude', 'graphviz']

  binary "bin-dists-master/tamarin-prover-#{version}/tamarin-prover-#{version}-macosx", target: 'tamarin-prover'
end
