cask 'tableflip' do
  version '1.1.8'
  sha256 '4b9e19c22b49594b88226648f5ac23c780a214aaead6bfd777a59b76c498bf9f'

  # s3.amazonaws.com/tableflip was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tableflip/TableFlip-v#{version}.zip"
  appcast "https://update.christiantietze.de/tableflip/v#{version.major}/release.xml",
          checkpoint: 'b8f9c377f51ec89e771370776136c0e3b0ffa9cc00ed071d93bb3786135246cc'
  name 'TableFlip'
  homepage 'https://tableflipapp.com/'

  auto_updates true

  app 'TableFlip.app'
end
