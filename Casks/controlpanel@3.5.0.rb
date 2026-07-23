cask "controlpanel@3.5.0" do
  version "3.5.0"

  on_arm do
    sha256 "0de81e652c90ec2e6053053e78fda166c033edb1d074fd36757ab990cb7d4717"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  on_intel do
    sha256 "a3c89894c317a3be17aa238e98de5014941eb06751614629c102fe4f641b18c0"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_Intel_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  name "OWLCMS Control Panel 3.5.0"
  desc "Control panel for OWLCMS weightlifting competitions"
  homepage "https://github.com/owlcms/owlcms-controlpanel"

  app "owlcms.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/owlcms.app"]
  end
end