cask "keyprofile" do
  version "1.0.3"
  sha256 "1b51700c6e5f90801874fbed952d849564dfa12c6ac0b6b7838452e46f70b245"

  url "https://github.com/Warkanlock/homebrew-keyprofile/releases/download/v1.0.3/Keyprofile.dmg"
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
