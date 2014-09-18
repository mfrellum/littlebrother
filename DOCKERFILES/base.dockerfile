FROM ubuntu:14.04
RUN apt-get update
# Base software
#   Python: 
#     numpy, pandas, web2py
RUN apt-get -y install python-pandas
RUN apt-get -y install python-web2py
#   R
RUN apt-get -y install r-base r-base-dev
#   Encryption: (encryption key list by date and host. Automatic change of encyption key with change of Docker-host.)
#     SSH
#     GPG
RUN apt-get -y install gpg
#   Archiving: (privat data files are encrypted. Public and privat data files are synced with git to apropiat resivers). 
#     git
RUN apt-get -y install git
#   Internet proxy:
#     Pound (http://www.apsis.ch/pound/)
RUN apt-get -y install pound

