cask "pranata" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "42fb6026b45f2db9cc2ad2558998dbdc0dfd2264b3672a9da0ef3afa0f2d889a",
         intel: "34785ae73f81dd8bc60ecce09a279efc8910a538d9016e5b32437d5110fa8264"

  url "https://github.com/agungtp22/pranata/releases/download/v#{version}/Pranata_#{version}_#{arch}.dmg"
  name "Pranata"
  desc "Modern, lightweight, offline-first API client with Postman parity"
  homepage "https://github.com/agungtp22/pranata"

  auto_updates true

  app "Pranata.app"

  zap trash: [
    "~/Library/Application Support/com.pranata.desktop",
    "~/Library/Preferences/com.pranata.desktop.plist",
    "~/Library/Saved Application State/com.pranata.desktop.savedState",
  ]
end
