
class ObsMcu < Formula
  desc "Connect OBS and a Mackie Control Unit (MCU)"
  homepage "https://github.com/normen/obs-mcu"
  url "https://github.com/normen/obs-mcu/archive/v0.7.4.tar.gz"
  sha256 "8e468d758a9824439a93efe9af3a128b35aa1d1aaf759ba15050f89f6bcbd350"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "-o", "obs-mcu"
    mkdir bin.to_s
    cp "obs-mcu", "#{bin}/"
  end

  test do
    #system "#{bin}/whatscli"
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test whatscli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
