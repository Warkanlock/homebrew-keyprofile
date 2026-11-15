cask "keyprofile" do
  version "1.0.8"
  sha256 "3b243e0176f8f4836775f8d4e611ea0d2bcd2c48b3d62db82324941ba0e16b6b"

  url "https://github.com/Warkanlock/homebrew-keyprofile/releases/download/v1.0.8/Keyprofile.dmg"
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
