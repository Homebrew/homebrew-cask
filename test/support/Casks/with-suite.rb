cask :v1 => 'with-suite' do
  version '1.2.3'
  sha256 'd1302a0dc25aff72ad395ed01a830468b92253ffd28269574f3ac0b5eb8aad54'

  url TestHelper.local_binary_url('caffeine_suite.zip')
  homepage 'http://example.com/with-suite'

  suite 'caffeine_suite'
end
