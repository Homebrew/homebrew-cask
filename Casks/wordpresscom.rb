cask :v1 => 'wordpresscom' do
  version '1.1'
  sha256 '2ee6503a319180895f7e75e4ff3ba06a695524e34152bdb5f6d6f39aa6c7c50c'

  url "https://public-api.wordpress.com/rest/v#{version}/desktop/osx/download?type=dmg"
  name 'WordPress.com'
  homepage 'https://desktop.wordpress.com/'
  license :gpl

  app 'WordPress.com.app'
end
