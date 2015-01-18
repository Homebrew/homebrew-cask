cask :v1 => 'vessel' do
  version '0.3.0'
  sha256 '25cd21e0e36fe0a4617081b78c9b9184655c82d3289a1235a0d8d9db0547027e'

  url "https://github.com/awvessel/vessel/releases/download/#{version}/Vessel.app.zip"
  homepage 'http://awvessel.github.io'
  license :oss

  app 'Vessel.app'
end
