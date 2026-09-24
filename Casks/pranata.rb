cask "pranata" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "f0537c8b6b65f08da8c5cf12e36948336bb7918673751799b6c1ddbf4a46c0f3",
         intel: "5dccc0d0fa3a85658008904be941cfceb2368b233b309e2d63bc8bc27e96012e"

  url "https://is3.cloudhost.id/pranata/Pranata_#{version}_#{arch}.dmg"
  name "Pranata"
  desc "Modern, lightweight, offline-first API client with Postman parity"
  homepage "https://github.com/agungtp22/pranata"

  depends_on :macos

  auto_updates true

  app "Pranata.app"

  postflight do
    system_command "xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/Pranata.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.pranata.desktop",
    "~/Library/Preferences/com.pranata.desktop.plist",
    "~/Library/Saved Application State/com.pranata.desktop.savedState",
  ]
end
