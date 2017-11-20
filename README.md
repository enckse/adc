A(rma) D(ata) C(ollection)
===

This is a fork of the Arma R3 [addon](https://github.com/alexcroox/R3) focused on collecting data for later analysis/visualization

# requirements

* Utilizes the [armq](https://github.com/enckse/armq) extension and currently only support linux deployment
* **Requires the latest version of [CBA](https://github.com/CBATeam/CBA_A3/releases)**
* Server Side addon for capturing unit movement and behaviour to a database for After Action Replays on a website.
* No modifications to your missions required, nothing for clients to download.

# install

* Deploy like any normal mod
* Enable/deploy the [armq-server](https://github.com/enckse/armq-serveR) components (including redis store)

and you are set

## building

* make sure the necessary 32-bit libs are installed per any [army](https//github.com/enckse/armq) requirements
* for archlinux utilize the PKGBUILD for the `makepbo` command available [here](https://github.com/enckse/depbo-tools)

now you can:
```
make
```
