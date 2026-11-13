cask "keyprofile" do
  version "1.0.5"
  sha256 "6df804c4bd5ad19d225d9f595ecf464bd9cc0e27bbd2725ae8a746ca07a22aeb"

  url "https://github.com/Warkanlock/homebrew-keyprofile/releases/download/v1.0.5/Keyprofile.dmg"
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
