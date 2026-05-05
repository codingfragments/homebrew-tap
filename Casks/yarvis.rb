cask "yarvis" do
  version "0.6.6"
  sha256 "58674dde6c7429a26562a15066d73a48b525cd1d3384fb975d759795b4097f6c"

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
