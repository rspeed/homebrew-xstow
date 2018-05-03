class Xstow < Formula
  desc "Extended replacement for GNU Stow"
  homepage "https://github.com/rspeed/xstow"
  url "https://github.com/rspeed/xstow/releases/download/v1.0.3/xstow-1.0.3.tar.bz2"
  sha256 "8b9075fdbea31689984cba2fcd196bd44a34c8fb4229ec543869626ea47729dc"

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--disable-static", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/xstow", "-Version"
  end
end
