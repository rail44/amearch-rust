FROM rail44/amearch

RUN mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.new
RUN mv /etc/pacman.d/mirrorlist.old /etc/pacman.d/mirrorlist

RUN pacman -Sy
RUN sudo aura -A --noconfirm rust-nightly-bin

RUN mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.old
RUN mv /etc/pacman.d/mirrorlist.new /etc/pacman.d/mirrorlist
