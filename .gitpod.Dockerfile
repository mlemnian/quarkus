FROM gitpod/workspace-full

RUN bash -c "sudo apt-get install -yq libz-dev zlib1g-dev \
             && . /home/gitpod/.sdkman/bin/sdkman-init.sh \
             && sdk install java 20.1.0.r11-grl"
