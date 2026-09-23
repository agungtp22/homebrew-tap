cask "pranata" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "fa013e2c8ccaa015e2eadf31ddc70d2902ce374bbce6c41c7c9e428c26d4027f",
         intel: "ca23d970936964c0f3ee3a32dfaf2cbc8cb16dbf1a205ff069413438d491485f"

  url "https://is3.cloudhost.id/pranata/Pranata_#{version}_#{arch}.dmg"
  name "Pranata"
  desc "Modern, lightweight, offline-first API client with Postman parity"
  homepage "https://github.com/agungtp22/pranata"

  depends_on :macos

  auto_updates true

  app "Pranata.app"

  zap trash: [
    "~/Library/Application Support/com.pranata.desktop",
    "~/Library/Preferences/com.pranata.desktop.plist",
    "~/Library/Saved Application State/com.pranata.desktop.savedState",
  ]
end
