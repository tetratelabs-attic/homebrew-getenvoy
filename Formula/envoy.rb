# Copyright 2019 Tetrate Labs
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class Envoy < Formula
    desc "Certified, compliant and conformant builds of Envoy proxy"
    homepage "https://getenvoy.io"
    url "https://dl.bintray.com/tetrate/getenvoy/getenvoy-envoy-1.17.0.p0.g5c801b2-1p72.g28ef262-darwin-release-x86_64.tar.xz"
    version "1.17.0"
    sha256 "b9e08f6323161f2d8deff188391210dc905970c615dc442105791b8a311576cf"

    head do
        url "https://dl.bintray.com/tetrate/getenvoy/getenvoy-envoy-1.17.0.p0.g5c801b2-1p72.g28ef262-darwin-release-x86_64.tar.xz"
        sha256 "b9e08f6323161f2d8deff188391210dc905970c615dc442105791b8a311576cf"
    end

    stable do
        url "https://dl.bintray.com/tetrate/getenvoy/getenvoy-envoy-1.17.0.p0.g5c801b2-1p72.g28ef262-darwin-release-x86_64.tar.xz"
        sha256 "b9e08f6323161f2d8deff188391210dc905970c615dc442105791b8a311576cf"
    end

    bottle :unneeded

    def install
        bin.install "bin/envoy"
    end

    test do
        # TODO(dio): more tests, e.g. CVE tests.
        assert_match /clean-getenvoy/, %x('#{bin}/envoy --version')
    end
end
