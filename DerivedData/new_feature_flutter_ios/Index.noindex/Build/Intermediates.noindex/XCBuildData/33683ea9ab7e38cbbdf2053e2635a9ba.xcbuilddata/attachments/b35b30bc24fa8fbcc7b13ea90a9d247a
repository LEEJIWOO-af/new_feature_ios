#!/bin/sh
set -e
set -u
source "${SRCROOT}/../new_feature_flutter_module/.ios/Flutter/flutter_export_environment.sh"
export VERBOSE_SCRIPT_LOGGING=1 && "$FLUTTER_ROOT"/packages/flutter_tools/bin/xcode_backend.sh build
