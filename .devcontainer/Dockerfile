FROM python:3.11

RUN  apt-get update \
        && apt-get install -y \
                texlive-latex-recommended \
                texlive-latex-extra \
                texlive-fonts-recommended \
                texlive-fonts-extra \
                texlive-luatex \
                texlive-xetex \
                latexmk \
                pandoc \
                librsvg2-bin \
                imagemagick \
        && apt-get clean

RUN pip install jupyter-book ou-book-theme pandoc pdfsak \
        pymupdf sphinx-jupyterbook-latex ou-print-pack-tools 

# Build instructions for the container
# docker buildx build -f .devcontainer/Dockerfile --platform linux/amd64,linux/arm64 . --tag  outm351dev/ou-doc-builder --push