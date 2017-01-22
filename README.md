# getip
A bash command to get your public or private IP with the option of save a list
of them in a file.

For example you can use this software in order to monitor your public IP,
which uses to be dynamically assigned by your ISP.

Carlos Molina 2017 (cmolina.ord@gmail.com)
https://github.com/cmolinaord/getip

## Help
  Usage:
    getip <domain> [<action>]
    getip [option]

  'getip' gives your current private or public IP which is using your host

  domain:
     public:       public IP assigned by your ISP to your modem for internet connection
     private:      private IP in your local network

  action:
    -l --list    used after 'public' or 'private' will show the historic results saved in  ~/.config/getip
    -r --record  used after 'public' or 'private', you will record the result in a file saved in ~/.config/getip

    option:
    help -h --help:   Shows help and exit
    -v --version:     Shows version and exit

## Version history

* Version 1.1 (12-sep-2016):
  * Added help message
  * Added default option showing both private, public IPs
* Version 1.2 (13-nov-2016):
  * Merged functionallity of 'record_public_ip' script into 'getip'
  * Removed 'record_public_ip' script
  * Added option of saving private IPs too
  * Implemented a stronger method of get internal IP
* Version 1.2.1 (02-dic-16)
  * Help message improved
  * Added long and short option strings for all functions
* Version 1.3 (22-ene-17)
  * Created Makefile for easy installation
  * Created bash-completion script
  * Added option to show version
