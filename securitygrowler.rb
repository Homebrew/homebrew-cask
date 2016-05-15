cask 'securitygrowler' do
  version '2.2'
  sha256 '6e0a7a36745e1003177db4d419ec4502fb4a1ccbbf6766ba7ea8a69cad863593'

  # github.com/pirate/security-growler/ was verified as official when first introduced to the cask
  url "https://github.com/pirate/security-growler/releases/download/v#{version}/Security.Growler.app.zip"
  appcast 'https://github.com/pirate/security-growler/releases.atom', checkpoint: 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'Security Growler'
  homepage 'https://github.com/pirate/security-growler'
  license :public_domain

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Security Growler.app'
end
