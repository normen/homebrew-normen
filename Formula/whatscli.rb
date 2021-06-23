class Whatscli < Formula
  desc "Command-line interface for WhatsApp"
  homepage "https://github.com/normen/whatscli"
  url "https://github.com/normen/whatscli/archive/v1.0.9.tar.gz"
  sha256 "67109aba5d2d72683f2cdc2e3d9a88e92a02db73ab18fe771dd2318cbe215ff6"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "-o", "whatscli"
    mkdir bin.to_s
    cp "whatscli", "#{bin}/"
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
