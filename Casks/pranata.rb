cask "pranata" do
  version "0.1.0"
  sha256 "791ac5cf9557ea83b45df9518824e3811461bc40212d899ab35074eb0d252ed1"

  url "https://is3.cloudhost.id/pranata/Pranata_#{version}_aarch64.dmg"
  name "Pranata"
  desc "API Client & Collaboration Platform"
  homepage "https://pranata.dev"

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
