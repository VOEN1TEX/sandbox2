set -e

IMAGE_NAME="adylkhanov-frontend"
IMAGE_TAG="${IMAGE_TAG:-latest}"

docker build \
  --target runtime \
  -t "${IMAGE_NAME}:${IMAGE_TAG}" \
  -f Dockerfile .

echo "Backend image built: ${IMAGE_NAME}:${IMAGE_TAG}"
