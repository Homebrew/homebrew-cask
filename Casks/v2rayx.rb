cask 'v2rayx' do
  version '0.7.8'
  sha256 'b7be7a26626bf65c7f5ce2801b52a56f7cd3cbb63c1b9db83cc5bf50cb2dd09c'

  url "https://github.com/Cenmrev/V2RayX/releases/download/v#{version}/V2RayX.dmg"
  name 'V2RayX'
  homepage 'https://github.com/Cenmrev/V2RayX'

  app 'V2RayX.app'
end
