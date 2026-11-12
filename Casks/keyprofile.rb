cask "keyprofile" do
  version "1.0.0"
  sha256 "e7ddf45db9ec9eca1226d230fae52514fb049ea0617c4b8e78d28e00acf7d42a"

  url "https://github.com/Warkanlock/homebrew-keyprofile/releases/download/v1.0.0/Keyprofile.dmg"
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
