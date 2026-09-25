cask "pranata" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.2"
  sha256 arm:   "09d6a21de554c45cdf906ccc0029f1a2b7b0fe598351a16da9f68318d11ac798",
         intel: "1765862c8093b1fec471d2857438d167f03ae80bca9b7030153f632bba6ddf4c"

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
