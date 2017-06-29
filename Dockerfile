FROM electronuserland/electron-builder@sha256:a98ca16b024cc96b24ee41fe8f9859657c8372703c20fd6b6f56f6ce92c7801d

RUN dpkg --add-architecture i386 && \
    apt-get update -y && \
    apt-get install -y --no-install-recommends wine32 wine-stable mono-devel ca-certificates-mono && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV WINEDEBUG -all,err+all
ENV WINEDLLOVERRIDES winemenubuilder.exe=d

RUN wineboot --init || true
