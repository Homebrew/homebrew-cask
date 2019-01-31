cask 'wireguardstatusbar' do
  version '1.23,128'
  sha256 'c3abe28bf86238986cf887331825c3bfcbb48af5ae01f307133c716d8b793b35'

  url "https://github.com/aequitas/macos-menubar-wireguard/releases/download/#{version.before_comma}/WireGuardStatusbar-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://github.com/aequitas/macos-menubar-wireguard/releases.atom'
  name 'WireGuard Status Bar'
  homepage 'https://github.com/aequitas/macos-menubar-wireguard'

  depends_on formula: 'wireguard-tools'

  app 'WireGuardStatusbar.app'
end
