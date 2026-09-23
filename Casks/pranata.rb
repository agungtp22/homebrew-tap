cask "pranata" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "fa013e2c8ccaa015e2eadf31ddc70d2902ce374bbce6c41c7c9e428c26d4027f",
         intel: "0318c6c0418aa31e3cf08ee2d5484f70aac4eccfd09a4c637f9eeb11048f3569"

  url "is3.cloudhost.id/Pranata_#{version}_#{arch}.dmg"
  name "Pranata"
  desc "Modern, lightweight, offline-first API client with Postman parity"
  homepage "https://github.com/agungtp22/pranata"

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
