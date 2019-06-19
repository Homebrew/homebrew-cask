cask 'tracer' do
  version '1.7.1'
  sha256 '21b7a4bbd1a4ed1f5c501dbaf70bb85a53ff660af598ec5c9308f1e3d4f71af0'

  # github.com/beast-dev/tracer was verified as official when first introduced to the cask
  url "https://github.com/beast-dev/tracer/releases/download/v#{version}/Tracer.v#{version}.dmg"
  appcast 'https://github.com/beast-dev/tracer/releases.atom'
  name 'Tracer'
  homepage 'https://beast.community/tracer'

  app "Tracer v#{version}.app"

  caveats do
    depends_on_java
  end
end
