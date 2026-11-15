cask "controlpanel@3.10.0-rc01" do
  version "3.10.0-rc01"

  on_arm do
    sha256 "0feed6e9d6dfdf1b7840c0554e7efd130367aa54191e8b2c689d671f79ff5dd0"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  on_intel do
    sha256 "9dff8acb294db5eb6d0f3907544a61408bac7ce882a9906a1a0f447defb983b5"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_Intel_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  name "OWLCMS Control Panel 3.10.0-rc01"
  desc "Control panel for OWLCMS weightlifting competitions"
  homepage "https://github.com/owlcms/owlcms-controlpanel"

  app "owlcms.app"
  binary "#{appdir}/owlcms.app/Contents/MacOS/owlcms"
  binary "#{appdir}/owlcms.app/Contents/MacOS/owlcms", target: "controlpanel"
end