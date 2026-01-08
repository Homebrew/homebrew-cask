cask "waveforms" do
  version "3.24.4"
  sha256 "832eb09e6926a76303423b21d950c0c45f18a5223de55935ac92654a891521f7"

  url "https://digilent.com/reference/lib/exe/fetch.php?tok=0f6fef&media=https%3A%2F%2Ffiles.digilent.com%2FSoftware%2FWaveforms%2F#{version}%2Fdigilent.waveforms_v#{version}.dmg"
  name "waveforms"
  desc "Virtual instrument suite for Digilent Test and Measurement devices"
  homepage "https://digilent.com/reference/software/waveforms/waveforms-3/start"

  livecheck do
    url "https://digilent.com/reference/software/waveforms/waveforms-3/previous-versions"
    regex(/Current Version\s+(\d+(?:\.\d+)+(?:[a-z])?)/i)
  end

  app "WaveForms.app"

  caveats do
    requires_rosetta
  end
end
