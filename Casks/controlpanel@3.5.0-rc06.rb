cask "controlpanel@3.5.0-rc06" do
  version "3.5.0-rc06"

  on_arm do
    sha256 "1ae585ad21b9bbc68c7fbdb894f76b45a12f643a6d3c99006605d7774b65c38b"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  on_intel do
    sha256 "0e10c8a0b409d3e413b8cb3cb2a009c6ad1f0cfb5b4c21febca1086092b0a542"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_Intel_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  name "OWLCMS Control Panel 3.5.0-rc06"
  desc "Control panel for OWLCMS weightlifting competitions"
  homepage "https://github.com/owlcms/owlcms-controlpanel"

  app "owlcms.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/owlcms.app"]
  end
end