cask "pranata" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "fc35e2bbe99a12528bad4232a5431add91cf44a7f5ec3dfd27dc6a71d4b11afc",
         intel: "ca23d970936964c0f3ee3a32dfaf2cbc8cb16dbf1a205ff069413438d491485f"

  url "is3.cloudhost.id/pranata/Pranata_#{version}_#{arch}.dmg"
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
