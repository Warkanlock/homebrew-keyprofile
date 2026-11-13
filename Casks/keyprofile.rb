cask "keyprofile" do
  version "1.0.6"
  sha256 "ef9735af5d938e07866bed8d403e8bb0a9f9e7177ea5d806d5510efeef70a652"

  url "https://github.com/Warkanlock/homebrew-keyprofile/releases/download/v1.0.6/Keyprofile.dmg"
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
