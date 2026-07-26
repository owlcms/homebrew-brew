cask "controlpanel@3.6.0-rc01" do
  version "3.6.0-rc01"

  on_arm do
    sha256 "e709b2ef1e0ac22054575cfcfd853f18416804eca07592c5a88c17042ffdc539"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  on_intel do
    sha256 "eb2f49d58992828beeea3881743f6c10f60fdbf5762085d4208160f523e1bf41"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_Intel_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  name "OWLCMS Control Panel 3.6.0-rc01"
  desc "Control panel for OWLCMS weightlifting competitions"
  homepage "https://github.com/owlcms/owlcms-controlpanel"

  app "owlcms.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/owlcms.app"]
  end
end