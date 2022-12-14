FROM ubuntu
LABEL version="1.0.0"
RUN yes | unminimize
RUN apt install -y systemd
RUN apt update

RUN apt install -y ssh 
RUN mkdir -p /root/.ssh && chmod 700 /root/.ssh
RUN touch /root/.ssh/authorized_keys && chmod 600 /root/.ssh/authorized_keys

RUN echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDroJqdsiswpzlYj4rnxoV9V+A3MuNkPrdTZRSzYgC2HPoNqOTA1GzQ7fOixDAgkAgZrVaPykRjjSYtAv0ucuu/tPNmldhHInSgEDD2OGhgWzck6AV8bIcTGz8YuY8Bfl5Jr3D0UD63HXfm84Uj6F06+58/n6O+lAE1Y5CArGOymBm3mo1LZb2EB9HaHOwMsxpDLps65wEaF4aWdn5xo4L2MvcMwWLfcanS9qKcwx6aEHCSH/nAFTNtvVRTSoUiVTwgzNuCeBcRZAnk+ARXk24hvf9KS7920eFjS490uIzvHwZw1GGB8J/Qzead3ASl/45WyRjAA8BoJpi9B0VUDIs7aWKzu2vUv1s/Nz1Oioy/TULpYSzDIOq5EDneijJii9GFx7wHewoJXrNXAsZ4h0KjTYumJ7Tta24CKLLyMx4SHr6V7vYRImdDt+vuopNrNvyAYX2Z2zW1g30/RN1BIzT8orTnMo10O5hF/99pf1HyEM26jgs7V/T5n688osSzvJ8= yucon@carbon" >> /root/.ssh/authorized_keys
RUN echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDJSCUxEtZmZcvzdy+lhM2JYOZIA8koJKWNBfmJxd+APPSPojP85vAKwex3xfXV1Jbi2gGjT6/LMhe3e8vVoDtg/u6yqLV5Uk4+tVnGO6LE/nbYdtG31DDAlDxMjm9f8EtRjhiGbM77zORtqmV2wU72BLQjReoB480jlnH5f20lTZUT93un4dfKFptmXudw/+EC5MxqYbHKBGl5u5hhjaIt7TmvLsyhnxQ/LTq1Xp3fJ8o8vo+1suWrsi0lT9kCl8ICZZM8o8HGl3oqvOodln6qkcoHR2/Hp61OE1KRgNm85+nXMZpnAkd6MhBWc8QydJjsGSrzSy6qP9UesuLPJnKL7HjEyuOvORPPernozG3jOJ5ZFXHuPUWr/EZfogytcHr16PtY5Gu45yDbUpA1Lv65Wvbt0Wbo25yKF/DIeFjpzMsbDwFfpFmp1I+DFCVk8tiF7QCnDWCyQg2DgseMVTWi0mYd/eL6iTyFf1N48hB83Dg6wQvlmfBBfWE4juHcpYc= root@carbon" >> /root/.ssh/authorized_keys

CMD ["/usr/bin/systemd"]
