cask "keyprofile" do
  version "1.0.1"
  sha256 "455006f0fde3ec737deb146094cf6fa2fb908ea49ec0b7c75b19d55c02be2466"

  url "https://github.com/Warkanlock/homebrew-keyprofile/releases/download/v1.0.1/Keyprofile.dmg"
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
