cask "controlpanel@3.5.0-rc04" do
  version "3.5.0-rc04"

  on_arm do
    sha256 "762eaac7341a52eb308cf7f5e65b79403f260dd7179eb67df95f277d63298e66"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  on_intel do
    sha256 "f8356cbe729a38afcd6a0a9bd16d9ef32aacb1b198f60b54b95d89aae15002d9"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_Intel_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  name "OWLCMS Control Panel 3.5.0-rc04"
  desc "Control panel for OWLCMS weightlifting competitions"
  homepage "https://github.com/owlcms/owlcms-controlpanel"

  app "owlcms.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/owlcms.app"]
  end
end