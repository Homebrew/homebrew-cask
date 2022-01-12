cask "zoomus" do
  version "5.4.58903.1122.1" # So it triggers an upgrade for users of the cask
  sha256 "614fa5e81ca40fa868e8b682e59ce7f2195bd70593b42e95af2a405afb395c21"

  url "https://d11yldzmag5yn.cloudfront.net/prod/#{version.csv.first}/Zoom.pkg",
      verified: "d11yldzmag5yn.cloudfront.net/"
  name "Zoom.us makeshift alias"
  desc "Temporary makeshift alias for the video communication tool Zoom"
  homepage "https://www.zoom.us/"

  depends_on cask: "zoom"

  stage_only true

  caveats <<~EOS
    RENAME WARNING

    Due to prevalent user confusion, the zoomus cask (this one) will be renamed to zoom.
    In the meantime, zoomus will install zoom for you as a dependency, but you should update your scripts.

    We’re aware this solution is subpar. If you’d like to help us improve it,
    we accept PRs and need the equivalent of formula_renames.json for casks: https://docs.brew.sh/Rename-A-Formula

    To migrate now, do:
      brew uninstall zoomus
      brew install zoom
  EOS
end
