#!/bin/bash
set -e

export WORKSPACE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
export BUILD_RISCV_DIR=${WORKSPACE_DIR}/build-riscv
export OVERLAY_DIR=${WORKSPACE_DIR}/chipyard-workload/overlay

echo "Preparing FireSim Overlay at ${OVERLAY_DIR}..."
mkdir -p ${OVERLAY_DIR}

# Copy Tools
echo "Copying IREE tools..."
cp ${BUILD_RISCV_DIR}/tools/iree-benchmark-module ${OVERLAY_DIR}/
cp ${BUILD_RISCV_DIR}/tools/iree-run-module ${OVERLAY_DIR}/

# Create run script
echo "Creating run_iree.sh..."
cat <<EOF > ${OVERLAY_DIR}/run_iree.sh
#!/bin/bash
echo "--- Running IREE Model ---"
/iree-run-module \\
  --device=local-task \\
  --module=/simple_abs.vmfb \\
  --function=abs \\
  --input="f32=-10" > /output.txt 2>&1
echo "--- IREE Model Finished ---"
poweroff
EOF
chmod +x ${OVERLAY_DIR}/run_iree.sh

echo "Overlay prepared."
