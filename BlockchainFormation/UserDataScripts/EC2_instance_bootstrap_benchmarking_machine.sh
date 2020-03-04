#!/bin/bash -xe

#  Copyright 2020 ChainLab
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

  # Getting updates (and upgrades)
  sudo apt-get update
  sudo apt-get -y upgrade || echo "Upgrading in indy_bootstrap failed" >> /home/ubuntu/upgrade_fail2.log

  sudo apt-get install python3
  sudo pip3 install asn1crypto==0.24.0 attrdict==2.0.1 attrs==19.3.0 Automat==0.6.0 base58==1.0.3 bcrypt==3.1.7 blinker==1.4 boto3==1.9.252
  sudo pip3 install botocore==1.12.252 certifi==2019.9.11 cffi==1.13.0 chardet==3.0.4 click==6.7 cloud-init==19.2 colorama==0.3.7
  sudo pip3 install colorlog==4.0.2 command-not-found==0.3 configobj==5.0.6 constantly==15.1.0 cryptography==2.8 cycler==0.10.0
  sudo pip3 install cytoolz==0.10.0 distro-info===0.18ubuntu0.18.04.1 docutils==0.15.2 ec2-hibinit-agent==1.0.0 eth-abi==2.0.0
  sudo pip3 install eth-account==0.4.0 eth-hash==0.2.0 eth-keyfile==0.5.1 eth-keys==0.2.4 eth-rlp==0.1.2 eth-typing==2.1.0 eth-utils==1.7.0
  sudo pip3 install hexbytes==0.2.0 hibagent==1.0.1 httplib2==0.9.2 hyperlink==17.3.1 idna==2.8 importlib-metadata==0.23 incremental==16.10.1
  sudo pip3 install ipfshttpclient==0.4.12 Jinja2==2.10 jmespath==0.9.4 jsonpatch==1.16 jsonpointer==1.10 jsonschema==3.1.1 keyring==10.6.0
  sudo pip3 install keyrings.alt==3.0 kiwisolver==1.1.0 language-selector==0.1 lru-dict==1.1.6 MarkupSafe==1.0 more-itertools==7.2.0
  sudo pip3 install multiaddr==0.0.8 netaddr==0.7.19 netifaces==0.10.4 numpy==1.17.3oauthlib==2.0.6 PAM==0.4.2 pandas==0.25.2 paramiko==2.6.0
  sudo pip3 install parsimonious==0.8.1 protobuf==3.10.0 pyasn1==0.4.2 pyasn1-modules==0.2.1 pycparser==2.19 pycrypto==2.6.1 pycryptodome==3.9.0
  sudo pip3 install pygobject==3.26.1 PyJWT==1.5.3 PyNaCl==1.3.0 pyOpenSSL==17.5.0 pyparsing==2.4.2 pyrsistent==0.15.4 pyserial==3.4
  sudo pip3 install python-apt==1.6.4 python-dateutil==2.8.0 python-debian==0.1.32 pytz==2019.3 pyxdg==0.25 PyYAML==3.12 pyzmq==18.1.0
  sudo pip3 install requests==2.22.0 requests-unixsocket==0.1.5 rlp==1.1.0 s3transfer==0.2.1 scipy==1.3.1 scp==0.13.2 SecretStorage==2.3.1
  sudo pip3 install service-identity==16.0.0 six==1.12.0 ssh-import-id==5.7 systemd-python==234 toml==0.10.0 toolz==0.10.0 Twisted==17.9.0
  sudo pip3 install ufw==0.36 unattended-upgrades==0.1 urllib3==1.25.6 varint==1.0.2 web3==5.2.1 websockets==7.0 zipp==0.6.0 zope.interface==4.3.2

  (cd ~/BlockchainFormation && sudo pip3 install .)

  # =======  Create success indicator at end of this script ==========
  sudo touch /var/log/user_data_success.log

EOF