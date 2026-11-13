cask "keyprofile" do
  version "1.0.7"
  sha256 "31da6908d840b421926c1d3662a9bacabaf9145f1ce8bed66d12f8e080d8ce54"

  url "https://github.com/Warkanlock/homebrew-keyprofile/releases/download/v1.0.7/Keyprofile.dmg"
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
