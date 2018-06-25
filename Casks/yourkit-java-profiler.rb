cask 'yourkit-java-profiler' do
  version '2018.04-b73'
  sha256 '0273e129d614cf37f90ec5d2f69fed213d29f7b1f378bccf3363585181e1e232'

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version}.dmg"
  name 'YourKit Java Profiler'
  homepage 'https://www.yourkit.com/features/'

  auto_updates true

  app "YourKit-Java-Profiler-#{version.major_minor}.app"
end
