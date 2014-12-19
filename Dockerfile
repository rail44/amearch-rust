FROM rail44/amearch

RUN mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.new
RUN mv /etc/pacman.d/mirrorlist.old /etc/pacman.d/mirrorlist

RUN sudo aura -A --noconfirm rust-nightly-bin cargo-nightly-bin

RUN mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.old
RUN mv /etc/pacman.d/mirrorlist.new /etc/pacman.d/mirrorlist
