set -e

IMAGE_NAME="adylkhanov-frontend"
IMAGE_TAG="${IMAGE_TAG:-latest}"
API_URL="${VUE_APP_API_URL:-http://localhost:8081}"

docker build \
  --target runtime \
  -t "${IMAGE_NAME}:${IMAGE_TAG}" \
  --build-arg "VUE_APP_API_URL=${API_URL}" \
  -f Dockerfile .

echo "Frontend image built: ${IMAGE_NAME}:${IMAGE_TAG}"
