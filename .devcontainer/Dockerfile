FROM python:3.11

RUN  apt-get update \
        && apt-get install -y \
                texlive-latex-recommended \
                texlive-latex-extra \
                texlive-fonts-recommended \
                texlive-fonts-extra \
                texlive-luatex \
                texlive-xetex \
                texlive-pictures \
                texlive-plain-generic \
                latexmk \
                pandoc \
                #pandoc-citeproc \
                pandoc-data \
                librsvg2-bin \
                imagemagick \
                git \
        && apt-get clean

# Legacy build
RUN pip install "myst-parser==0.18.1" "myst-nb==0.17.2" "jupyter-book==0.15.1" "ou-book-theme==0.5.1" pandoc pdfsak \
        pymupdf sphinx-jupyterbook-latex==0.5.2 ou-print-pack-tools 

#RUN pip install jupyterlab-myst jupytext git+https://github.com/innovationOUtside/ipython_magic_tikz.git


# Build instructions for the container
# docker buildx build -f .devcontainer/Dockerfile --platform linux/amd64,linux/arm64 . --tag  outm351dev/ou-doc-builder:legacy --push
