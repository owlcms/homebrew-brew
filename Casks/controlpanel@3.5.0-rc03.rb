cask "controlpanel@3.5.0-rc03" do
  version "3.5.0-rc03"

  on_arm do
    sha256 "42637426e21b57eb47cd25215e806fd26732b173336f6d6e45872d339ca90f0e"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  on_intel do
    sha256 "1379a1a3b4eb1fa05eddfbb7119ea416a69dbf8a47aff4668b7ff7d69b0db43b"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_Intel_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  name "OWLCMS Control Panel 3.5.0-rc03"
  desc "Control panel for OWLCMS weightlifting competitions"
  homepage "https://github.com/owlcms/owlcms-controlpanel"

  app "owlcms.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/owlcms.app"]
  end
end