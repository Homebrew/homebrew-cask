cask "zoomus" do
  version "5.4.58903.1122,alias"
  sha256 "614fa5e81ca40fa868e8b682e59ce7f2195bd70593b42e95af2a405afb395c21"

  # d11yldzmag5yn.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d11yldzmag5yn.cloudfront.net/prod/#{version.before_comma}/Zoom.pkg"
  name "Zoom.us makeshift alias"
  desc "Temporary makeshift alias for the video communication tool Zoom"
  homepage "https://www.zoom.us/"

  depends_on cask: "zoom"

  stage_only true

  caveats <<~EOS
    RENAME WARNING

    Due to prevalent user confusion, the zoomus cask (this one) will be renamed to zoom.
    This cask will install zoom for you as a dependency, but you should rename zoomus to zoom in your own scripts.

    We’re aware this solution is subpar. If you’d like to help us improve it,
    we accept PRs and need the equivalent of formula_renames.json for casks: https://docs.brew.sh/Rename-A-Formula
  EOS
end
