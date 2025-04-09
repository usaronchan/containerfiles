podman pull chanzz0/nvim
podman run -it --name nvim chanzz0/nvim


podman start -i nvim && podman exec -it nvim /bin/nvim
podman stop nvim
