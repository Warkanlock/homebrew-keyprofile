cask "keyprofile" do
  version "1.0.2"
  sha256 "c6a4c29658ea648d6b399a0717b386f661f7df61513e1994a437e7e6bb21e782"

  url "https://github.com/Warkanlock/homebrew-keyprofile/releases/download/v1.0.2/Keyprofile.dmg"
  name "Keyprofile"
  desc "Writing shortcuts for macOS"
  homepage "https://keyprofile.app/"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Keyprofile.app"

  caveats <<~EOS
    Keyprofile is ad-hoc signed and has not been notarized by Apple.
    If macOS blocks it, open Keyprofile once from Applications, then choose
    System Settings > Privacy & Security > Open Anyway and confirm.
  EOS
end
