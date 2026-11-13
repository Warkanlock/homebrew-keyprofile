cask "keyprofile" do
  version "1.0.4"
  sha256 "958d897e609d32fc564a92e9926319f64c8704f37ae85718c51a6f734638811a"

  url "https://github.com/Warkanlock/homebrew-keyprofile/releases/download/v1.0.4/Keyprofile.dmg"
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
