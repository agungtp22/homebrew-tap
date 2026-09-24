cask "pranata" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.1"
  sha256 arm:   "e33936d93aa3bc8e2e72564272575aeb686b93e0d6621c172d02491b6afbf57d",
         intel: "0e594d85c4c72baea7ab2b2fbadb06d6c786aea8bc3b8e40d19c692f44c2ddcf"

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
