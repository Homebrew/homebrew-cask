cask :v1 => 'vessel' do
  version '0.3.0'
  sha256 'd53717d6de3f9d216585af56fd7e61f7a89abcd0436017f5861a17389c7a169a'

  url "http://awvessel.github.io/binaries/vessel-#{version}.tbz2"
  homepage 'http://awvessel.github.io'
  license :oss

  app 'Vessel.app'
end
