cask "yarvis" do
  version "0.3.0"
  sha256 "dfbc7715dd0a60d490c5803b99f5ad13ef12d2e09dac1ea8883e5d525a9def89"

  url "https://github.com/codingfragments/yarvis/releases/download/v#{version}/Yarvis_#{version}_aarch64.dmg"
  name "Yarvis"
  desc "Personal Knowledge Assistant"
  homepage "https://github.com/codingfragments/yarvis"

  depends_on arch: :arm64

  app "Yarvis.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Yarvis.app"],
                   sudo: false
  end

  zap trash: [
    "~/.yarvis",
  ]
end
