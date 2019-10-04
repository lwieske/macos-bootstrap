# macos-bootstrap

## Testing and Validating with Packer/Vagrant

```
vagrant destroy --force
sudo gem install macinbox
sudo macinbox --box-format virtualbox
vagrant init macinbox
```

```
vagrant up
vagrant scp ../macos-bootstrap .
vagrant ssh -c "cd macos-bootstrap ; ./bootstrap.sh macos"
vagrant halt ; vagrant up
vagrant ssh -c "cd macos-bootstrap ; ./bootstrap.sh basics"
vagrant halt ; vagrant up
vagrant ssh -c "cd macos-bootstrap ; ./bootstrap.sh brews"
vagrant halt ; vagrant up
```

## ./bootstrap.sh macos

## ./bootstrap.sh basics

## ./bootstrap.sh brews

```
> ./bootstrap.sh all
This script may overwrite existing files in your home directory. Are you sure? (y/n) y
Password:

#############################################################
### set macOS defaults
#############################################################

### general
### screen
### finder
### dock
### mail
### spotlight
### terminal
### time machine
objc[1336]: Class asn1Token is implemented in both /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/Frameworks/CommerceCore.framework/Versions/A/CommerceCore (0x121b8d038) and /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e382628). One of the two will be used. Which one is undefined.
objc[1336]: Class asn1SetToken is implemented in both /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/Frameworks/CommerceCore.framework/Versions/A/CommerceCore (0x121b8d010) and /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e382650). One of the two will be used. Which one is undefined.
objc[1336]: Class asn1SequenceToken is implemented in both /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/Frameworks/CommerceCore.framework/Versions/A/CommerceCore (0x121b8cfe8) and /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e382678). One of the two will be used. Which one is undefined.
objc[1336]: Class asn1IntegerToken is implemented in both /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/Frameworks/CommerceCore.framework/Versions/A/CommerceCore (0x121b8cf70) and /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e3826a0). One of the two will be used. Which one is undefined.
objc[1336]: Class asn1OSToken is implemented in both /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/Frameworks/CommerceCore.framework/Versions/A/CommerceCore (0x121b8cf98) and /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e3826c8). One of the two will be used. Which one is undefined.
objc[1336]: Class ISPurchaseReceipt is implemented in both /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/Frameworks/CommerceCore.framework/Versions/A/CommerceCore (0x121b8cf48) and /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e382a38). One of the two will be used. Which one is undefined.
objc[1336]: Class asn1ReceiptToken is implemented in both /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/Frameworks/CommerceCore.framework/Versions/A/CommerceCore (0x121b8cfc0) and /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e384ce8). One of the two will be used. Which one is undefined.
objc[1336]: Class AAFollowUpController is implemented in both /System/Library/PrivateFrameworks/AppleAccount.framework/Versions/A/AppleAccount (0x11e0bdda0) and /System/Library/PrivateFrameworks/AOSAccounts.framework/Versions/A/AOSAccounts (0x106d74ef0). One of the two will be used. Which one is undefined.
objc[1336]: Class AMSupportURLConnectionDelegate is implemented in both /System/Library/PrivateFrameworks/EmbeddedOSInstall.framework/Versions/A/EmbeddedOSInstall (0x1255f2c58) and /System/Library/PrivateFrameworks/OSPersonalization.framework/Versions/A/OSPersonalization (0x125455358). One of the two will be used. Which one is undefined.
objc[1336]: Class PKFileDownload is implemented in both /System/Library/PrivateFrameworks/PackageKit.framework/Versions/A/PackageKit (0x123fe14a8) and /System/Library/PrivateFrameworks/PassKitCore.framework/Versions/A/PassKitCore (0x111debf48). One of the two will be used. Which one is undefined.
objc[1336]: Class SSRequest is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e37f1a8) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x124679d90). One of the two will be used. Which one is undefined.
objc[1336]: Class SSOperationProgress is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e37ef78) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x12467a150). One of the two will be used. Which one is undefined.
objc[1336]: Class SSDownloadMetadata is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e37ec58) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x12467a5b0). One of the two will be used. Which one is undefined.
objc[1336]: Class SSDownloadAsset is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e37ef28) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x12467a650). One of the two will be used. Which one is undefined.
objc[1336]: Class SSDownloadPhase is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e37ee88) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x12467a6a0). One of the two will be used. Which one is undefined.
objc[1336]: Class SSDownloadStatus is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e37ee38) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x12467a718). One of the two will be used. Which one is undefined.
objc[1336]: Class SSDownloadManifestResponse is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e37f158) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x12467a740). One of the two will be used. Which one is undefined.
objc[1336]: Class SSPurchase is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e37f518) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x124679890). One of the two will be used. Which one is undefined.
objc[1336]: Class SSPurchaseResponse is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e383398) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x1246798b8). One of the two will be used. Which one is undefined.
objc[1336]: Class SSDownload is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e37ebb8) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x124679840). One of the two will be used. Which one is undefined.
objc[1336]: Class SSRestoreContentItem is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e381a48) and /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/CommerceKit (0x124743060). One of the two will be used. Which one is undefined.
objc[1336]: Class SSURLRequestProperties is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e380918) and /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/CommerceKit (0x124743510). One of the two will be used. Which one is undefined.
objc[1336]: Class SSMutableURLRequestProperties is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e380940) and /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/CommerceKit (0x124743538). One of the two will be used. Which one is undefined.
objc[1336]: Class SSRemoteNotification is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e380f58) and /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/CommerceKit (0x124743790). One of the two will be used. Which one is undefined.
objc[1336]: Class SLWebTokenHandlerController is implemented in both /System/Library/Frameworks/Social.framework/Versions/A/Social (0x121b20820) and /System/Library/PrivateFrameworks/SocialServices.framework/Versions/A/SocialServices (0x121aa4268). One of the two will be used. Which one is undefined.
### activity monitor
### debug menus
### mac app store
### messages
### killall Activity Monitor
### killall Address Book
### killall Calendar
### killall cfprefsd
### killall Contacts
### killall Dock
### killall Finder
### killall iCal
### killall Mail
### killall Messages
### killall Safari
### killall SystemUIServer

#############################################################
### install homebrew and brew everything
#############################################################

### install homebrew
### brew update + upgrade + doctor + tap homebrew/bundle
Already up-to-date.
Updating Homebrew...
Your system is ready to brew.
Updating Homebrew...
==> Tapping homebrew/bundle
Cloning into '/usr/local/Homebrew/Library/Taps/homebrew/homebrew-bundle'...
remote: Enumerating objects: 90, done.
remote: Counting objects: 100% (90/90), done.
remote: Compressing objects: 100% (80/80), done.
remote: Total 90 (delta 6), reused 30 (delta 4), pack-reused 0
Unpacking objects: 100% (90/90), done.
Tapped 1 command (186 files, 251.9KB).
### brew bundle
Tapping caskroom/cask
Tapping caskroom/fonts
Tapping caskroom/versions
Tapping homebrew/cask-drivers
Using homebrew/bundle
Tapping buo/cask-upgrade
Installing mas
Installing visual-studio-code
Installing iterm2
Installing java
Installing go
Installing node
Installing python3
Installing r
Installing rust
Installing qlimagesize
Installing qlmarkdown
Installing qlprettypatch
Installing qlstephen
Installing quicklook-csv
Installing quicklook-json
Installing webpquicklook
Installing firefox
Installing git
Installing git-flow
Installing git-lfs
Installing github
Installing slack
Installing packer
Installing virtualbox has failed!
Installing vagrant
Installing xhyve
Installing consul
Installing docker-machine-driver-hyperkit
Installing docker-machine-driver-xhyve
Installing docker-machine
Installing docker
Installing etcd
Installing faas-cli
Installing kubernetes-cli
Installing kubernetes-helm
Installing minikube
Installing box-sync
Installing dropbox
Installing google-backup-and-sync
Installing sync
Installing awscli
Installing azure-cli
Installing google-cloud-sdk
Installing octave
Installing rstudio
Installing unity
Installing ansible
Installing powershell
Installing saltstack
Installing terraform
Installing cassandra
Installing mariadb
Installing mongodb
Installing postgresql
Installing redis
Installing rabbitmq
Installing zeromq
Installing jetty
Installing nginx
Installing arduino
Installing balenaetcher
Installing microsoft-office has failed!
Installing asciinema
Installing graphviz
Installing gettext
Installing gomplate
Installing imagemagick
Installing jq
Installing openssl
Installing tmux
Installing ttyrec
Installing unrar
Installing wget
Installing xz
Installing adobe-acrobat-reader
Installing authy
Installing blender
Installing brave-browser
Installing cleanmymac
Installing drawio
Installing falcon-sql-client
Installing keybase
Installing kindle
Installing monodraw
Installing musescore
Installing openscad
Installing spectacle
Installing wireshark
Homebrew Bundle failed! 2 Brewfile dependencies failed to install.
### brew cleanup
Pruned 0 symbolic links and 10 directories from /usr/local

#############################################################
### install vscode extensions
#############################################################

Installing extensions...
Installing extension 'amazonwebservices.aws-toolkit-vscode' v1.1.0...
Extension 'amazonwebservices.aws-toolkit-vscode' v1.1.0 was successfully installed.
Installing extensions...
Installing extension 'davidanson.vscode-markdownlint' v0.30.2...
Extension 'davidanson.vscode-markdownlint' v0.30.2 was successfully installed.
Installing extensions...
Installing extension 'eg2.vscode-npm-script' v0.3.9...
Extension 'eg2.vscode-npm-script' v0.3.9 was successfully installed.
Installing extensions...
Installing extension 'formulahendry.azure-storage-explorer' v0.1.2...
Extension 'formulahendry.azure-storage-explorer' v0.1.2 was successfully installed.
Installing extensions...
Installing extension 'googlecloudtools.cloudcode' v0.0.12...
Extension 'googlecloudtools.cloudcode' v0.0.12 was successfully installed.
Installing extensions...
Installing extension 'humao.rest-client' v0.22.2...
Extension 'humao.rest-client' v0.22.2 was successfully installed.
Installing extensions...
Installing extension 'mauve.terraform' v1.4.0...
Extension 'mauve.terraform' v1.4.0 was successfully installed.
Installing extensions...
Installing extension 'ms-azure-devops.azure-pipelines' v1.157.4...
Extension 'ms-azure-devops.azure-pipelines' v1.157.4 was successfully installed.
Installing extensions...
Installing extension 'ms-azuretools.vscode-docker' v0.8.1...
Extension 'ms-azuretools.vscode-docker' v0.8.1 was successfully installed.
Installing extensions...
Installing extension 'ms-kubernetes-tools.vscode-kubernetes-tools' v1.0.4...
Extension 'ms-kubernetes-tools.vscode-kubernetes-tools' v1.0.4 was successfully installed.
Installing extensions...
Installing extension 'ms-python.anaconda-extension-pack' v1.0.1...
Extension 'ms-python.anaconda-extension-pack' v1.0.1 was successfully installed.
Installing extensions...
Extension 'ms-python.python' is already installed.
Installing extensions...
Installing extension 'ms-vscode-remote.remote-ssh' v0.46.1...
Extension 'ms-vscode-remote.remote-ssh' v0.46.1 was successfully installed.
Installing extensions...
Installing extension 'ms-vscode-remote.remote-wsl' v0.39.5...
Extension 'ms-vscode-remote.remote-wsl' v0.39.5 was successfully installed.
Installing extensions...
Installing extension 'ms-vscode.azurecli' v0.4.6...
Extension 'ms-vscode.azurecli' v0.4.6 was successfully installed.
Installing extensions...
Installing extension 'ms-vscode.go' v0.11.7...
Extension 'ms-vscode.go' v0.11.7 was successfully installed.
Installing extensions...
Installing extension 'ms-vscode.vscode-node-azure-pack' v0.0.9...
Extension 'ms-vscode.vscode-node-azure-pack' v0.0.9 was successfully installed.
Installing extensions...
Installing extension 'ms-vsliveshare.vsliveshare' v1.0.905...
Extension 'ms-vsliveshare.vsliveshare' v1.0.905 was successfully installed.
Installing extensions...
Extension 'redhat.vscode-yaml' is already installed.
Installing extensions...
Installing extension 'rust-lang.rust' v0.6.3...
#!/usr/bin/env bash
Extension 'rust-lang.rust' v0.6.3 was successfully installed.
Installing extensions...
Installing extension 'vscode-icons-team.vscode-icons' v9.4.0...
Extension 'vscode-icons-team.vscode-icons' v9.4.0 was successfully installed.
Installing extensions...
Installing extension 'vscoss.vscode-ansible' v0.5.2...
Extension 'vscoss.vscode-ansible' v0.5.2 was successfully installed.
Installing extensions...
Installing extension 'yzhang.markdown-all-in-one' v2.4.2...
Extension 'yzhang.markdown-all-in-one' v2.4.2 was successfully installed.

#############################################################
### install anaconda3
#############################################################

PREFIX=/Users/vagrant/Applications/anaconda3
Unpacking payload ...
Collecting package metadata (current_repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /Users/vagrant/Applications/anaconda3

  added / updated specs:
    - _ipyw_jlab_nb_ext_conf==0.1.0=py37_0
    - alabaster==0.7.12=py37_0
    - anaconda-client==1.7.2=py37_0
    - anaconda-navigator==1.9.7=py37_0
    - anaconda-project==0.8.3=py_0
    - anaconda==2019.07=py37_0
    - appnope==0.1.0=py37_0
    - appscript==1.1.0=py37h1de35cc_0
    - asn1crypto==0.24.0=py37_0
    - astroid==2.2.5=py37_0
    - astropy==3.2.1=py37h1de35cc_0
    - atomicwrites==1.3.0=py37_1
    - attrs==19.1.0=py37_1
    - babel==2.7.0=py_0
    - backcall==0.1.0=py37_0
    - backports.functools_lru_cache==1.5=py_2
    - backports.os==0.1.1=py37_0
    - backports.shutil_get_terminal_size==1.0.0=py37_2
    - backports.tempfile==1.0=py_1
    - backports.weakref==1.0.post1=py_1
    - backports==1.0=py_2
    - beautifulsoup4==4.7.1=py37_1
    - bitarray==0.9.3=py37h1de35cc_0
    - bkcharts==0.2=py37_0
    - blas==1.0=mkl
    - bleach==3.1.0=py37_0
    - blosc==1.16.3=hd9629dc_0
    - bokeh==1.2.0=py37_0
    - boto==2.49.0=py37_0
    - bottleneck==1.2.1=py37h1d22016_1
    - bzip2==1.0.8=h1de35cc_0
    - ca-certificates==2019.5.15=0
    - certifi==2019.6.16=py37_0
    - cffi==1.12.3=py37hb5b8e2f_0
    - chardet==3.0.4=py37_1
    - click==7.0=py37_0
    - cloudpickle==1.2.1=py_0
    - clyent==1.2.2=py37_1
    - colorama==0.4.1=py37_0
    - conda-build==3.18.8=py37_0
    - conda-env==2.6.0=1
    - conda-package-handling==1.3.11=py37_0
    - conda-verify==3.4.2=py_1
    - conda==4.7.10=py37_0
    - contextlib2==0.5.5=py37_0
    - cryptography==2.7=py37ha12b0ac_0
    - curl==7.65.2=ha441bb4_0
    - cycler==0.10.0=py37_0
    - cython==0.29.12=py37h0a44026_0
    - cytoolz==0.10.0=py37h1de35cc_0
    - dask-core==2.1.0=py_0
    - dask==2.1.0=py_0
    - dbus==1.13.6=h90a0687_0
    - decorator==4.4.0=py37_1
    - defusedxml==0.6.0=py_0
    - distributed==2.1.0=py_0
    - docutils==0.14=py37_0
    - entrypoints==0.3=py37_0
    - et_xmlfile==1.0.1=py37_0
    - expat==2.2.6=h0a44026_0
    - fastcache==1.1.0=py37h1de35cc_0
    - filelock==3.0.12=py_0
    - flask==1.1.1=py_0
    - freetype==2.9.1=hb4e5f40_0
    - future==0.17.1=py37_0
    - get_terminal_size==1.0.0=h7520d66_0
    - gettext==0.19.8.1=h15daf44_3
    - gevent==1.4.0=py37h1de35cc_0
    - glib==2.56.2=hd9629dc_0
    - glob2==0.7=py_0
    - gmp==6.1.2=hb37e062_1
    - gmpy2==2.0.8=py37h6ef4df4_2
    - greenlet==0.4.15=py37h1de35cc_0
    - h5py==2.9.0=py37h3134771_0
    - hdf5==1.10.4=hfa1e0ec_0
    - heapdict==1.0.0=py37_2
    - html5lib==1.0.1=py37_0
    - icu==58.2=h4b95b61_1
    - idna==2.8=py37_0
    - imageio==2.5.0=py37_0
    - imagesize==1.1.0=py37_0
    - importlib_metadata==0.17=py37_1
    - intel-openmp==2019.4=233
    - ipykernel==5.1.1=py37h39e3cac_0
    - ipython==7.6.1=py37h39e3cac_0
    - ipython_genutils==0.2.0=py37_0
    - ipywidgets==7.5.0=py_0
    - isort==4.3.21=py37_0
    - itsdangerous==1.1.0=py37_0
    - jbig==2.1=h4d881f8_0
    - jdcal==1.4.1=py_0
    - jedi==0.13.3=py37_0
    - jinja2==2.10.1=py37_0
    - joblib==0.13.2=py37_0
    - jpeg==9b=he5867d9_2
    - json5==0.8.4=py_0
    - jsonschema==3.0.1=py37_0
    - jupyter==1.0.0=py37_7
    - jupyter_client==5.3.1=py_0
    - jupyter_console==6.0.0=py37_0
    - jupyter_core==4.5.0=py_0
    - jupyterlab==1.0.2=py37hf63ae98_0
    - jupyterlab_server==1.0.0=py_0
    - keyring==18.0.0=py37_0
    - kiwisolver==1.1.0=py37h0a44026_0
    - krb5==1.16.1=hddcf347_7
    - lazy-object-proxy==1.4.1=py37h1de35cc_0
    - libarchive==3.3.3=h786848e_5
    - libcurl==7.65.2=h051b688_0
    - libcxx==4.0.1=hcfea43d_1
    - libcxxabi==4.0.1=hcfea43d_1
    - libedit==3.1.20181209=hb402a30_0
    - libffi==3.2.1=h475c297_4
    - libgfortran==3.0.1=h93005f0_2
    - libiconv==1.15=hdd342a3_7
    - liblief==0.9.0=h2a1bed3_2
    - libpng==1.6.37=ha441bb4_0
    - libsodium==1.0.16=h3efe00b_0
    - libssh2==1.8.2=ha12b0ac_0
    - libtiff==4.0.10=hcb84e12_2
    - libxml2==2.9.9=hf6e021a_1
    - libxslt==1.1.33=h33a18ac_0
    - llvm-openmp==4.0.1=hcfea43d_1
    - llvmlite==0.29.0=py37h98b8051_0
    - locket==0.2.0=py37_1
    - lxml==4.3.4=py37hef8c89e_0
    - lz4-c==1.8.1.2=h1de35cc_0
    - lzo==2.10=h362108e_2
    - markupsafe==1.1.1=py37h1de35cc_0
    - matplotlib==3.1.0=py37h54f8f79_0
    - mccabe==0.6.1=py37_1
    - mistune==0.8.4=py37h1de35cc_0
    - mkl-service==2.0.2=py37h1de35cc_0
    - mkl==2019.4=233
    - mkl_fft==1.0.12=py37h5e564d8_0
    - mkl_random==1.0.2=py37h27c97d8_0
    - mock==3.0.5=py37_0
    - more-itertools==7.0.0=py37_0
    - mpc==1.1.0=h6ef4df4_1
    - mpfr==4.0.1=h3018a27_3
    - mpmath==1.1.0=py37_0
    - msgpack-python==0.6.1=py37h04f5b5a_1
    - multipledispatch==0.6.0=py37_0
    - navigator-updater==0.2.1=py37_0
    - nbconvert==5.5.0=py_0
    - nbformat==4.4.0=py37_0
    - ncurses==6.1=h0a44026_1
    - networkx==2.3=py_0
    - nltk==3.4.4=py37_0
    - nose==1.3.7=py37_2
    - notebook==6.0.0=py37_0
    - numba==0.44.1=py37h6440ff4_0
    - numexpr==2.6.9=py37h7413580_0
    - numpy-base==1.16.4=py37h6575580_0
    - numpy==1.16.4=py37hacdab7b_0
    - numpydoc==0.9.1=py_0
    - olefile==0.46=py37_0
    - openpyxl==2.6.2=py_0
    - openssl==1.1.1c=h1de35cc_1
    - packaging==19.0=py37_0
    - pandas==0.24.2=py37h0a44026_0
    - pandoc==2.2.3.2=0
    - pandocfilters==1.4.2=py37_1
    - parso==0.5.0=py_0
    - partd==1.0.0=py_0
    - path.py==12.0.1=py_0
    - pathlib2==2.3.4=py37_0
    - patsy==0.5.1=py37_0
    - pcre==8.43=h0a44026_0
    - pep8==1.7.1=py37_0
    - pexpect==4.7.0=py37_0
    - pickleshare==0.7.5=py37_0
    - pillow==6.1.0=py37hb68e598_0
    - pip==19.1.1=py37_0
    - pkginfo==1.5.0.1=py37_0
    - pluggy==0.12.0=py_0
    - ply==3.11=py37_0
    - prometheus_client==0.7.1=py_0
    - prompt_toolkit==2.0.9=py37_0
    - psutil==5.6.3=py37h1de35cc_0
    - ptyprocess==0.6.0=py37_0
    - py-lief==0.9.0=py37h1413db1_2
    - py==1.8.0=py37_0
    - pycodestyle==2.5.0=py37_0
    - pycosat==0.6.3=py37h1de35cc_0
    - pycparser==2.19=py37_0
    - pycrypto==2.6.1=py37h1de35cc_9
    - pycurl==7.43.0.3=py37ha12b0ac_0
    - pyflakes==2.1.1=py37_0
    - pygments==2.4.2=py_0
    - pylint==2.3.1=py37_0
    - pyodbc==4.0.26=py37h0a44026_0
    - pyopenssl==19.0.0=py37_0
    - pyparsing==2.4.0=py_0
    - pyqt==5.9.2=py37h655552a_2
    - pyrsistent==0.14.11=py37h1de35cc_0
    - pysocks==1.7.0=py37_0
    - pytables==3.5.2=py37h5bccee9_1
    - pytest-arraydiff==0.3=py37h39e3cac_0
    - pytest-astropy==0.5.0=py37_0
    - pytest-doctestplus==0.3.0=py37_0
    - pytest-openfiles==0.3.2=py37_0
    - pytest-remotedata==0.3.1=py37_0
    - pytest==5.0.1=py37_0
    - python-dateutil==2.8.0=py37_0
    - python-libarchive-c==2.8=py37_11
    - python.app==2=py37_9
    - python==3.7.3=h359304d_0
    - pytz==2019.1=py_0
    - pywavelets==1.0.3=py37h1d22016_1
    - pyyaml==5.1.1=py37h1de35cc_0
    - pyzmq==18.0.0=py37h0a44026_0
    - qt==5.9.7=h468cd18_1
    - qtawesome==0.5.7=py37_1
    - qtconsole==4.5.1=py_0
    - qtpy==1.8.0=py_0
    - readline==7.0=h1de35cc_5
    - requests==2.22.0=py37_0
    - rope==0.14.0=py_0
    - ruamel_yaml==0.15.46=py37h1de35cc_0
    - scikit-image==0.15.0=py37h0a44026_0
    - scikit-learn==0.21.2=py37h27c97d8_0
    - scipy==1.3.0=py37h1410ff5_0
    - seaborn==0.9.0=py37_0
    - send2trash==1.5.0=py37_0
    - setuptools==41.0.1=py37_0
    - simplegeneric==0.8.1=py37_2
    - singledispatch==3.4.0.3=py37_0
    - sip==4.19.8=py37h0a44026_0
    - six==1.12.0=py37_0
    - snappy==1.1.7=he62c110_3
    - snowballstemmer==1.9.0=py_0
    - sortedcollections==1.1.2=py37_0
    - sortedcontainers==2.1.0=py37_0
    - soupsieve==1.8=py37_0
    - sphinx==2.1.2=py_0
    - sphinxcontrib-applehelp==1.0.1=py_0
    - sphinxcontrib-devhelp==1.0.1=py_0
    - sphinxcontrib-htmlhelp==1.0.2=py_0
    - sphinxcontrib-jsmath==1.0.1=py_0
    - sphinxcontrib-qthelp==1.0.2=py_0
    - sphinxcontrib-serializinghtml==1.1.3=py_0
    - sphinxcontrib-websupport==1.1.2=py_0
    - sphinxcontrib==1.0=py37_1
    - spyder-kernels==0.5.1=py37_0
    - spyder==3.3.6=py37_0
    - sqlalchemy==1.3.5=py37h1de35cc_0
    - sqlite==3.29.0=ha441bb4_0
    - statsmodels==0.10.0=py37h1d22016_0
    - sympy==1.4=py37_0
    - tblib==1.4.0=py_0
    - terminado==0.8.2=py37_0
    - testpath==0.4.2=py37_0
    - tk==8.6.8=ha441bb4_0
    - toolz==0.10.0=py_0
    - tornado==6.0.3=py37h1de35cc_0
    - tqdm==4.32.1=py_0
    - traitlets==4.3.2=py37_0
    - unicodecsv==0.14.1=py37_0
    - unixodbc==2.3.7=h1de35cc_0
    - urllib3==1.24.2=py37_0
    - wcwidth==0.1.7=py37_0
    - webencodings==0.5.1=py37_1
    - werkzeug==0.15.4=py_0
    - wheel==0.33.4=py37_0
    - widgetsnbextension==3.5.0=py37_0
    - wrapt==1.11.2=py37h1de35cc_0
    - wurlitzer==1.0.2=py37_0
    - xlrd==1.2.0=py37_0
    - xlsxwriter==1.1.8=py_0
    - xlwings==0.15.8=py37_0
    - xlwt==1.3.0=py37_0
    - xz==5.2.4=h1de35cc_4
    - yaml==0.1.7=hc338f04_2
    - zeromq==4.3.1=h0a44026_3
    - zict==1.0.0=py_0
    - zipp==0.5.1=py_0
    - zlib==1.2.11=h1de35cc_3
    - zstd==1.3.7=h5bba6e5_0


The following NEW packages will be INSTALLED:

  _ipyw_jlab_nb_ext~ pkgs/main/osx-64::_ipyw_jlab_nb_ext_conf-0.1.0-py37_0
  alabaster          pkgs/main/osx-64::alabaster-0.7.12-py37_0
  anaconda           pkgs/main/osx-64::anaconda-2019.07-py37_0
  anaconda-client    pkgs/main/osx-64::anaconda-client-1.7.2-py37_0
  anaconda-navigator pkgs/main/osx-64::anaconda-navigator-1.9.7-py37_0
  anaconda-project   pkgs/main/noarch::anaconda-project-0.8.3-py_0
  appnope            pkgs/main/osx-64::appnope-0.1.0-py37_0
  appscript          pkgs/main/osx-64::appscript-1.1.0-py37h1de35cc_0
  asn1crypto         pkgs/main/osx-64::asn1crypto-0.24.0-py37_0
  astroid            pkgs/main/osx-64::astroid-2.2.5-py37_0
  astropy            pkgs/main/osx-64::astropy-3.2.1-py37h1de35cc_0
  atomicwrites       pkgs/main/osx-64::atomicwrites-1.3.0-py37_1
  attrs              pkgs/main/osx-64::attrs-19.1.0-py37_1
  babel              pkgs/main/noarch::babel-2.7.0-py_0
  backcall           pkgs/main/osx-64::backcall-0.1.0-py37_0
  backports          pkgs/main/noarch::backports-1.0-py_2
  backports.functoo~ pkgs/main/noarch::backports.functools_lru_cache-1.5-py_2
  backports.os       pkgs/main/osx-64::backports.os-0.1.1-py37_0
  backports.shutil_~ pkgs/main/osx-64::backports.shutil_get_terminal_size-1.0.0-py37_2
  backports.tempfile pkgs/main/noarch::backports.tempfile-1.0-py_1
  backports.weakref  pkgs/main/noarch::backports.weakref-1.0.post1-py_1
  beautifulsoup4     pkgs/main/osx-64::beautifulsoup4-4.7.1-py37_1
  bitarray           pkgs/main/osx-64::bitarray-0.9.3-py37h1de35cc_0
  bkcharts           pkgs/main/osx-64::bkcharts-0.2-py37_0
  blas               pkgs/main/osx-64::blas-1.0-mkl
  bleach             pkgs/main/osx-64::bleach-3.1.0-py37_0
  blosc              pkgs/main/osx-64::blosc-1.16.3-hd9629dc_0
  bokeh              pkgs/main/osx-64::bokeh-1.2.0-py37_0
  boto               pkgs/main/osx-64::boto-2.49.0-py37_0
  bottleneck         pkgs/main/osx-64::bottleneck-1.2.1-py37h1d22016_1
  bzip2              pkgs/main/osx-64::bzip2-1.0.8-h1de35cc_0
  ca-certificates    pkgs/main/osx-64::ca-certificates-2019.5.15-0
  certifi            pkgs/main/osx-64::certifi-2019.6.16-py37_0
  cffi               pkgs/main/osx-64::cffi-1.12.3-py37hb5b8e2f_0
  chardet            pkgs/main/osx-64::chardet-3.0.4-py37_1
  click              pkgs/main/osx-64::click-7.0-py37_0
  cloudpickle        pkgs/main/noarch::cloudpickle-1.2.1-py_0
  clyent             pkgs/main/osx-64::clyent-1.2.2-py37_1
  colorama           pkgs/main/osx-64::colorama-0.4.1-py37_0
  conda              pkgs/main/osx-64::conda-4.7.10-py37_0
  conda-build        pkgs/main/osx-64::conda-build-3.18.8-py37_0
  conda-env          pkgs/main/osx-64::conda-env-2.6.0-1
  conda-package-han~ pkgs/main/osx-64::conda-package-handling-1.3.11-py37_0
  conda-verify       pkgs/main/noarch::conda-verify-3.4.2-py_1
  contextlib2        pkgs/main/osx-64::contextlib2-0.5.5-py37_0
  cryptography       pkgs/main/osx-64::cryptography-2.7-py37ha12b0ac_0
  curl               pkgs/main/osx-64::curl-7.65.2-ha441bb4_0
  cycler             pkgs/main/osx-64::cycler-0.10.0-py37_0
  cython             pkgs/main/osx-64::cython-0.29.12-py37h0a44026_0
  cytoolz            pkgs/main/osx-64::cytoolz-0.10.0-py37h1de35cc_0
  dask               pkgs/main/noarch::dask-2.1.0-py_0
  dask-core          pkgs/main/noarch::dask-core-2.1.0-py_0
  dbus               pkgs/main/osx-64::dbus-1.13.6-h90a0687_0
  decorator          pkgs/main/osx-64::decorator-4.4.0-py37_1
  defusedxml         pkgs/main/noarch::defusedxml-0.6.0-py_0
  distributed        pkgs/main/noarch::distributed-2.1.0-py_0
  docutils           pkgs/main/osx-64::docutils-0.14-py37_0
  entrypoints        pkgs/main/osx-64::entrypoints-0.3-py37_0
  et_xmlfile         pkgs/main/osx-64::et_xmlfile-1.0.1-py37_0
  expat              pkgs/main/osx-64::expat-2.2.6-h0a44026_0
  fastcache          pkgs/main/osx-64::fastcache-1.1.0-py37h1de35cc_0
  filelock           pkgs/main/noarch::filelock-3.0.12-py_0
  flask              pkgs/main/noarch::flask-1.1.1-py_0
  freetype           pkgs/main/osx-64::freetype-2.9.1-hb4e5f40_0
  future             pkgs/main/osx-64::future-0.17.1-py37_0
  get_terminal_size  pkgs/main/osx-64::get_terminal_size-1.0.0-h7520d66_0
  gettext            pkgs/main/osx-64::gettext-0.19.8.1-h15daf44_3
  gevent             pkgs/main/osx-64::gevent-1.4.0-py37h1de35cc_0
  glib               pkgs/main/osx-64::glib-2.56.2-hd9629dc_0
  glob2              pkgs/main/noarch::glob2-0.7-py_0
  gmp                pkgs/main/osx-64::gmp-6.1.2-hb37e062_1
  gmpy2              pkgs/main/osx-64::gmpy2-2.0.8-py37h6ef4df4_2
  greenlet           pkgs/main/osx-64::greenlet-0.4.15-py37h1de35cc_0
  h5py               pkgs/main/osx-64::h5py-2.9.0-py37h3134771_0
  hdf5               pkgs/main/osx-64::hdf5-1.10.4-hfa1e0ec_0
  heapdict           pkgs/main/osx-64::heapdict-1.0.0-py37_2
  html5lib           pkgs/main/osx-64::html5lib-1.0.1-py37_0
  icu                pkgs/main/osx-64::icu-58.2-h4b95b61_1
  idna               pkgs/main/osx-64::idna-2.8-py37_0
  imageio            pkgs/main/osx-64::imageio-2.5.0-py37_0
  imagesize          pkgs/main/osx-64::imagesize-1.1.0-py37_0
  importlib_metadata pkgs/main/osx-64::importlib_metadata-0.17-py37_1
  intel-openmp       pkgs/main/osx-64::intel-openmp-2019.4-233
  ipykernel          pkgs/main/osx-64::ipykernel-5.1.1-py37h39e3cac_0
  ipython            pkgs/main/osx-64::ipython-7.6.1-py37h39e3cac_0
  ipython_genutils   pkgs/main/osx-64::ipython_genutils-0.2.0-py37_0
  ipywidgets         pkgs/main/noarch::ipywidgets-7.5.0-py_0
  isort              pkgs/main/osx-64::isort-4.3.21-py37_0
  itsdangerous       pkgs/main/osx-64::itsdangerous-1.1.0-py37_0
  jbig               pkgs/main/osx-64::jbig-2.1-h4d881f8_0
  jdcal              pkgs/main/noarch::jdcal-1.4.1-py_0
  jedi               pkgs/main/osx-64::jedi-0.13.3-py37_0
  jinja2             pkgs/main/osx-64::jinja2-2.10.1-py37_0
  joblib             pkgs/main/osx-64::joblib-0.13.2-py37_0
  jpeg               pkgs/main/osx-64::jpeg-9b-he5867d9_2
  json5              pkgs/main/noarch::json5-0.8.4-py_0
  jsonschema         pkgs/main/osx-64::jsonschema-3.0.1-py37_0
  jupyter            pkgs/main/osx-64::jupyter-1.0.0-py37_7
  jupyter_client     pkgs/main/noarch::jupyter_client-5.3.1-py_0
  jupyter_console    pkgs/main/osx-64::jupyter_console-6.0.0-py37_0
  jupyter_core       pkgs/main/noarch::jupyter_core-4.5.0-py_0
  jupyterlab         pkgs/main/osx-64::jupyterlab-1.0.2-py37hf63ae98_0
  jupyterlab_server  pkgs/main/noarch::jupyterlab_server-1.0.0-py_0
  keyring            pkgs/main/osx-64::keyring-18.0.0-py37_0
  kiwisolver         pkgs/main/osx-64::kiwisolver-1.1.0-py37h0a44026_0
  krb5               pkgs/main/osx-64::krb5-1.16.1-hddcf347_7
  lazy-object-proxy  pkgs/main/osx-64::lazy-object-proxy-1.4.1-py37h1de35cc_0
  libarchive         pkgs/main/osx-64::libarchive-3.3.3-h786848e_5
  libcurl            pkgs/main/osx-64::libcurl-7.65.2-h051b688_0
  libcxx             pkgs/main/osx-64::libcxx-4.0.1-hcfea43d_1
  libcxxabi          pkgs/main/osx-64::libcxxabi-4.0.1-hcfea43d_1
  libedit            pkgs/main/osx-64::libedit-3.1.20181209-hb402a30_0
  libffi             pkgs/main/osx-64::libffi-3.2.1-h475c297_4
  libgfortran        pkgs/main/osx-64::libgfortran-3.0.1-h93005f0_2
  libiconv           pkgs/main/osx-64::libiconv-1.15-hdd342a3_7
  liblief            pkgs/main/osx-64::liblief-0.9.0-h2a1bed3_2
  libpng             pkgs/main/osx-64::libpng-1.6.37-ha441bb4_0
  libsodium          pkgs/main/osx-64::libsodium-1.0.16-h3efe00b_0
  libssh2            pkgs/main/osx-64::libssh2-1.8.2-ha12b0ac_0
  libtiff            pkgs/main/osx-64::libtiff-4.0.10-hcb84e12_2
  libxml2            pkgs/main/osx-64::libxml2-2.9.9-hf6e021a_1
  libxslt            pkgs/main/osx-64::libxslt-1.1.33-h33a18ac_0
  llvm-openmp        pkgs/main/osx-64::llvm-openmp-4.0.1-hcfea43d_1
  llvmlite           pkgs/main/osx-64::llvmlite-0.29.0-py37h98b8051_0
  locket             pkgs/main/osx-64::locket-0.2.0-py37_1
  lxml               pkgs/main/osx-64::lxml-4.3.4-py37hef8c89e_0
  lz4-c              pkgs/main/osx-64::lz4-c-1.8.1.2-h1de35cc_0
  lzo                pkgs/main/osx-64::lzo-2.10-h362108e_2
  markupsafe         pkgs/main/osx-64::markupsafe-1.1.1-py37h1de35cc_0
  matplotlib         pkgs/main/osx-64::matplotlib-3.1.0-py37h54f8f79_0
  mccabe             pkgs/main/osx-64::mccabe-0.6.1-py37_1
  mistune            pkgs/main/osx-64::mistune-0.8.4-py37h1de35cc_0
  mkl                pkgs/main/osx-64::mkl-2019.4-233
  mkl-service        pkgs/main/osx-64::mkl-service-2.0.2-py37h1de35cc_0
  mkl_fft            pkgs/main/osx-64::mkl_fft-1.0.12-py37h5e564d8_0
  mkl_random         pkgs/main/osx-64::mkl_random-1.0.2-py37h27c97d8_0
  mock               pkgs/main/osx-64::mock-3.0.5-py37_0
  more-itertools     pkgs/main/osx-64::more-itertools-7.0.0-py37_0
  mpc                pkgs/main/osx-64::mpc-1.1.0-h6ef4df4_1
  mpfr               pkgs/main/osx-64::mpfr-4.0.1-h3018a27_3
  mpmath             pkgs/main/osx-64::mpmath-1.1.0-py37_0
  msgpack-python     pkgs/main/osx-64::msgpack-python-0.6.1-py37h04f5b5a_1
  multipledispatch   pkgs/main/osx-64::multipledispatch-0.6.0-py37_0
  navigator-updater  pkgs/main/osx-64::navigator-updater-0.2.1-py37_0
  nbconvert          pkgs/main/noarch::nbconvert-5.5.0-py_0
  nbformat           pkgs/main/osx-64::nbformat-4.4.0-py37_0
  ncurses            pkgs/main/osx-64::ncurses-6.1-h0a44026_1
  networkx           pkgs/main/noarch::networkx-2.3-py_0
  nltk               pkgs/main/osx-64::nltk-3.4.4-py37_0
  nose               pkgs/main/osx-64::nose-1.3.7-py37_2
  notebook           pkgs/main/osx-64::notebook-6.0.0-py37_0
  numba              pkgs/main/osx-64::numba-0.44.1-py37h6440ff4_0
  numexpr            pkgs/main/osx-64::numexpr-2.6.9-py37h7413580_0
  numpy              pkgs/main/osx-64::numpy-1.16.4-py37hacdab7b_0
  numpy-base         pkgs/main/osx-64::numpy-base-1.16.4-py37h6575580_0
  numpydoc           pkgs/main/noarch::numpydoc-0.9.1-py_0
  olefile            pkgs/main/osx-64::olefile-0.46-py37_0
  openpyxl           pkgs/main/noarch::openpyxl-2.6.2-py_0
  openssl            pkgs/main/osx-64::openssl-1.1.1c-h1de35cc_1
  packaging          pkgs/main/osx-64::packaging-19.0-py37_0
  pandas             pkgs/main/osx-64::pandas-0.24.2-py37h0a44026_0
  pandoc             pkgs/main/osx-64::pandoc-2.2.3.2-0
  pandocfilters      pkgs/main/osx-64::pandocfilters-1.4.2-py37_1
  parso              pkgs/main/noarch::parso-0.5.0-py_0
  partd              pkgs/main/noarch::partd-1.0.0-py_0
  path.py            pkgs/main/noarch::path.py-12.0.1-py_0
  pathlib2           pkgs/main/osx-64::pathlib2-2.3.4-py37_0
  patsy              pkgs/main/osx-64::patsy-0.5.1-py37_0
  pcre               pkgs/main/osx-64::pcre-8.43-h0a44026_0
  pep8               pkgs/main/osx-64::pep8-1.7.1-py37_0
  pexpect            pkgs/main/osx-64::pexpect-4.7.0-py37_0
  pickleshare        pkgs/main/osx-64::pickleshare-0.7.5-py37_0
  pillow             pkgs/main/osx-64::pillow-6.1.0-py37hb68e598_0
  pip                pkgs/main/osx-64::pip-19.1.1-py37_0
  pkginfo            pkgs/main/osx-64::pkginfo-1.5.0.1-py37_0
  pluggy             pkgs/main/noarch::pluggy-0.12.0-py_0
  ply                pkgs/main/osx-64::ply-3.11-py37_0
  prometheus_client  pkgs/main/noarch::prometheus_client-0.7.1-py_0
  prompt_toolkit     pkgs/main/osx-64::prompt_toolkit-2.0.9-py37_0
  psutil             pkgs/main/osx-64::psutil-5.6.3-py37h1de35cc_0
  ptyprocess         pkgs/main/osx-64::ptyprocess-0.6.0-py37_0
  py                 pkgs/main/osx-64::py-1.8.0-py37_0
  py-lief            pkgs/main/osx-64::py-lief-0.9.0-py37h1413db1_2
  pycodestyle        pkgs/main/osx-64::pycodestyle-2.5.0-py37_0
  pycosat            pkgs/main/osx-64::pycosat-0.6.3-py37h1de35cc_0
  pycparser          pkgs/main/osx-64::pycparser-2.19-py37_0
  pycrypto           pkgs/main/osx-64::pycrypto-2.6.1-py37h1de35cc_9
  pycurl             pkgs/main/osx-64::pycurl-7.43.0.3-py37ha12b0ac_0
  pyflakes           pkgs/main/osx-64::pyflakes-2.1.1-py37_0
  pygments           pkgs/main/noarch::pygments-2.4.2-py_0
  pylint             pkgs/main/osx-64::pylint-2.3.1-py37_0
  pyodbc             pkgs/main/osx-64::pyodbc-4.0.26-py37h0a44026_0
  pyopenssl          pkgs/main/osx-64::pyopenssl-19.0.0-py37_0
  pyparsing          pkgs/main/noarch::pyparsing-2.4.0-py_0
  pyqt               pkgs/main/osx-64::pyqt-5.9.2-py37h655552a_2
  pyrsistent         pkgs/main/osx-64::pyrsistent-0.14.11-py37h1de35cc_0
  pysocks            pkgs/main/osx-64::pysocks-1.7.0-py37_0
  pytables           pkgs/main/osx-64::pytables-3.5.2-py37h5bccee9_1
  pytest             pkgs/main/osx-64::pytest-5.0.1-py37_0
  pytest-arraydiff   pkgs/main/osx-64::pytest-arraydiff-0.3-py37h39e3cac_0
  pytest-astropy     pkgs/main/osx-64::pytest-astropy-0.5.0-py37_0
  pytest-doctestplus pkgs/main/osx-64::pytest-doctestplus-0.3.0-py37_0
  pytest-openfiles   pkgs/main/osx-64::pytest-openfiles-0.3.2-py37_0
  pytest-remotedata  pkgs/main/osx-64::pytest-remotedata-0.3.1-py37_0
  python             pkgs/main/osx-64::python-3.7.3-h359304d_0
  python-dateutil    pkgs/main/osx-64::python-dateutil-2.8.0-py37_0
  python-libarchive~ pkgs/main/osx-64::python-libarchive-c-2.8-py37_11
  python.app         pkgs/main/osx-64::python.app-2-py37_9
  pytz               pkgs/main/noarch::pytz-2019.1-py_0
  pywavelets         pkgs/main/osx-64::pywavelets-1.0.3-py37h1d22016_1
  pyyaml             pkgs/main/osx-64::pyyaml-5.1.1-py37h1de35cc_0
  pyzmq              pkgs/main/osx-64::pyzmq-18.0.0-py37h0a44026_0
  qt                 pkgs/main/osx-64::qt-5.9.7-h468cd18_1
  qtawesome          pkgs/main/osx-64::qtawesome-0.5.7-py37_1
  qtconsole          pkgs/main/noarch::qtconsole-4.5.1-py_0
  qtpy               pkgs/main/noarch::qtpy-1.8.0-py_0
  readline           pkgs/main/osx-64::readline-7.0-h1de35cc_5
  requests           pkgs/main/osx-64::requests-2.22.0-py37_0
  rope               pkgs/main/noarch::rope-0.14.0-py_0
  ruamel_yaml        pkgs/main/osx-64::ruamel_yaml-0.15.46-py37h1de35cc_0
  scikit-image       pkgs/main/osx-64::scikit-image-0.15.0-py37h0a44026_0
  scikit-learn       pkgs/main/osx-64::scikit-learn-0.21.2-py37h27c97d8_0
  scipy              pkgs/main/osx-64::scipy-1.3.0-py37h1410ff5_0
  seaborn            pkgs/main/osx-64::seaborn-0.9.0-py37_0
  send2trash         pkgs/main/osx-64::send2trash-1.5.0-py37_0
  setuptools         pkgs/main/osx-64::setuptools-41.0.1-py37_0
  simplegeneric      pkgs/main/osx-64::simplegeneric-0.8.1-py37_2
  singledispatch     pkgs/main/osx-64::singledispatch-3.4.0.3-py37_0
  sip                pkgs/main/osx-64::sip-4.19.8-py37h0a44026_0
  six                pkgs/main/osx-64::six-1.12.0-py37_0
  snappy             pkgs/main/osx-64::snappy-1.1.7-he62c110_3
  snowballstemmer    pkgs/main/noarch::snowballstemmer-1.9.0-py_0
  sortedcollections  pkgs/main/osx-64::sortedcollections-1.1.2-py37_0
  sortedcontainers   pkgs/main/osx-64::sortedcontainers-2.1.0-py37_0
  soupsieve          pkgs/main/osx-64::soupsieve-1.8-py37_0
  sphinx             pkgs/main/noarch::sphinx-2.1.2-py_0
  sphinxcontrib      pkgs/main/osx-64::sphinxcontrib-1.0-py37_1
  sphinxcontrib-app~ pkgs/main/noarch::sphinxcontrib-applehelp-1.0.1-py_0
  sphinxcontrib-dev~ pkgs/main/noarch::sphinxcontrib-devhelp-1.0.1-py_0
  sphinxcontrib-htm~ pkgs/main/noarch::sphinxcontrib-htmlhelp-1.0.2-py_0
  sphinxcontrib-jsm~ pkgs/main/noarch::sphinxcontrib-jsmath-1.0.1-py_0
  sphinxcontrib-qth~ pkgs/main/noarch::sphinxcontrib-qthelp-1.0.2-py_0
  sphinxcontrib-ser~ pkgs/main/noarch::sphinxcontrib-serializinghtml-1.1.3-py_0
  sphinxcontrib-web~ pkgs/main/noarch::sphinxcontrib-websupport-1.1.2-py_0
  spyder             pkgs/main/osx-64::spyder-3.3.6-py37_0
  spyder-kernels     pkgs/main/osx-64::spyder-kernels-0.5.1-py37_0
  sqlalchemy         pkgs/main/osx-64::sqlalchemy-1.3.5-py37h1de35cc_0
  sqlite             pkgs/main/osx-64::sqlite-3.29.0-ha441bb4_0
  statsmodels        pkgs/main/osx-64::statsmodels-0.10.0-py37h1d22016_0
  sympy              pkgs/main/osx-64::sympy-1.4-py37_0
  tblib              pkgs/main/noarch::tblib-1.4.0-py_0
  terminado          pkgs/main/osx-64::terminado-0.8.2-py37_0
  testpath           pkgs/main/osx-64::testpath-0.4.2-py37_0
  tk                 pkgs/main/osx-64::tk-8.6.8-ha441bb4_0
  toolz              pkgs/main/noarch::toolz-0.10.0-py_0
  tornado            pkgs/main/osx-64::tornado-6.0.3-py37h1de35cc_0
  tqdm               pkgs/main/noarch::tqdm-4.32.1-py_0
  traitlets          pkgs/main/osx-64::traitlets-4.3.2-py37_0
  unicodecsv         pkgs/main/osx-64::unicodecsv-0.14.1-py37_0
  unixodbc           pkgs/main/osx-64::unixodbc-2.3.7-h1de35cc_0
  urllib3            pkgs/main/osx-64::urllib3-1.24.2-py37_0
  wcwidth            pkgs/main/osx-64::wcwidth-0.1.7-py37_0
  webencodings       pkgs/main/osx-64::webencodings-0.5.1-py37_1
  werkzeug           pkgs/main/noarch::werkzeug-0.15.4-py_0
  wheel              pkgs/main/osx-64::wheel-0.33.4-py37_0
  widgetsnbextension pkgs/main/osx-64::widgetsnbextension-3.5.0-py37_0
  wrapt              pkgs/main/osx-64::wrapt-1.11.2-py37h1de35cc_0
  wurlitzer          pkgs/main/osx-64::wurlitzer-1.0.2-py37_0
  xlrd               pkgs/main/osx-64::xlrd-1.2.0-py37_0
  xlsxwriter         pkgs/main/noarch::xlsxwriter-1.1.8-py_0
  xlwings            pkgs/main/osx-64::xlwings-0.15.8-py37_0
  xlwt               pkgs/main/osx-64::xlwt-1.3.0-py37_0
  xz                 pkgs/main/osx-64::xz-5.2.4-h1de35cc_4
  yaml               pkgs/main/osx-64::yaml-0.1.7-hc338f04_2
  zeromq             pkgs/main/osx-64::zeromq-4.3.1-h0a44026_3
  zict               pkgs/main/noarch::zict-1.0.0-py_0
  zipp               pkgs/main/noarch::zipp-0.5.1-py_0
  zlib               pkgs/main/osx-64::zlib-1.2.11-h1de35cc_3
  zstd               pkgs/main/osx-64::zstd-1.3.7-h5bba6e5_0


Preparing transaction: done
Executing transaction: \ b''
done
installation finished.

#####################################################################
### ... completed ... restart to ensure all updates take effect
#####################################################################

>
```

```
brew update && brew upgrade && brew cu --all --yes --cleanup && mas upgrade && brew cleanup
```